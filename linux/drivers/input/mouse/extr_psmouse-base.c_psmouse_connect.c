
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct serio_driver {int dummy; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct serio {char* phys; TYPE_2__ dev; TYPE_1__ id; scalar_t__ parent; } ;
struct psmouse {int (* disconnect ) (struct psmouse*) ;int (* pt_deactivate ) (struct psmouse*) ;TYPE_3__* protocol; int (* pt_activate ) (struct psmouse*) ;struct input_dev* dev; int smartscroll; int resync_time; int resetafter; int resolution; int rate; int phys; int resync_work; int ps2dev; } ;
struct input_dev {int dummy; } ;
struct TYPE_6__ {int smbus_companion; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int PSMOUSE_CMD_MODE ;
 int PSMOUSE_IGNORE ;
 int PSMOUSE_INITIALIZING ;
 scalar_t__ SERIO_PS_PSTHRU ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int kfree (struct psmouse*) ;
 struct psmouse* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ps2_init (int *,struct serio*) ;
 int psmouse_activate (struct psmouse*) ;
 int psmouse_attribute_group ;
 int psmouse_deactivate (struct psmouse*) ;
 int psmouse_initialize (struct psmouse*) ;
 int psmouse_mutex ;
 scalar_t__ psmouse_probe (struct psmouse*) ;
 int psmouse_rate ;
 int psmouse_resetafter ;
 int psmouse_resolution ;
 int psmouse_resync ;
 int psmouse_resync_time ;
 int psmouse_set_state (struct psmouse*,int ) ;
 int psmouse_smartscroll ;
 int psmouse_switch_protocol (struct psmouse*,int *) ;
 int serio_close (struct serio*) ;
 struct psmouse* serio_get_drvdata (scalar_t__) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct psmouse*) ;
 int snprintf (int ,int,char*,char*) ;
 int stub1 (struct psmouse*) ;
 int stub2 (struct psmouse*) ;
 int stub3 (struct psmouse*) ;
 int sysfs_create_group (int *,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int psmouse_connect(struct serio *serio, struct serio_driver *drv)
{
 struct psmouse *psmouse, *parent = ((void*)0);
 struct input_dev *input_dev;
 int retval = 0, error = -ENOMEM;

 mutex_lock(&psmouse_mutex);





 if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
  parent = serio_get_drvdata(serio->parent);
  psmouse_deactivate(parent);
 }

 psmouse = kzalloc(sizeof(struct psmouse), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!psmouse || !input_dev)
  goto err_free;

 ps2_init(&psmouse->ps2dev, serio);
 INIT_DELAYED_WORK(&psmouse->resync_work, psmouse_resync);
 psmouse->dev = input_dev;
 snprintf(psmouse->phys, sizeof(psmouse->phys), "%s/input0", serio->phys);

 psmouse_set_state(psmouse, PSMOUSE_INITIALIZING);

 serio_set_drvdata(serio, psmouse);

 error = serio_open(serio, drv);
 if (error)
  goto err_clear_drvdata;


 if (serio->id.type == SERIO_PS_PSTHRU)
  usleep_range(10000, 15000);

 if (psmouse_probe(psmouse) < 0) {
  error = -ENODEV;
  goto err_close_serio;
 }

 psmouse->rate = psmouse_rate;
 psmouse->resolution = psmouse_resolution;
 psmouse->resetafter = psmouse_resetafter;
 psmouse->resync_time = parent ? 0 : psmouse_resync_time;
 psmouse->smartscroll = psmouse_smartscroll;

 psmouse_switch_protocol(psmouse, ((void*)0));

 if (!psmouse->protocol->smbus_companion) {
  psmouse_set_state(psmouse, PSMOUSE_CMD_MODE);
  psmouse_initialize(psmouse);

  error = input_register_device(input_dev);
  if (error)
   goto err_protocol_disconnect;
 } else {

  input_free_device(input_dev);
  psmouse->dev = input_dev = ((void*)0);
 }

 if (parent && parent->pt_activate)
  parent->pt_activate(parent);

 error = sysfs_create_group(&serio->dev.kobj, &psmouse_attribute_group);
 if (error)
  goto err_pt_deactivate;





 if (!psmouse->protocol->smbus_companion)
  psmouse_activate(psmouse);

 out:

 if (parent)
  psmouse_activate(parent);

 mutex_unlock(&psmouse_mutex);
 return retval;

 err_pt_deactivate:
 if (parent && parent->pt_deactivate)
  parent->pt_deactivate(parent);
 if (input_dev) {
  input_unregister_device(input_dev);
  input_dev = ((void*)0);
 }
 err_protocol_disconnect:
 if (psmouse->disconnect)
  psmouse->disconnect(psmouse);
 psmouse_set_state(psmouse, PSMOUSE_IGNORE);
 err_close_serio:
 serio_close(serio);
 err_clear_drvdata:
 serio_set_drvdata(serio, ((void*)0));
 err_free:
 input_free_device(input_dev);
 kfree(psmouse);

 retval = error;
 goto out;
}
