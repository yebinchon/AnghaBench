
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int * parent; } ;
struct serio {struct serio* hv_serio; int stop; int start; int phys; int name; struct serio* port_data; TYPE_2__ id; TYPE_1__ dev; int wait_event; int lock; struct hv_device* hv_dev; } ;
struct hv_vmbus_device_id {int dummy; } ;
struct hv_kbd_dev {struct hv_kbd_dev* hv_serio; int stop; int start; int phys; int name; struct hv_kbd_dev* port_data; TYPE_2__ id; TYPE_1__ dev; int wait_event; int lock; struct hv_device* hv_dev; } ;
struct hv_device {int channel; int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KBD_VSC_RECV_RING_BUFFER_SIZE ;
 int KBD_VSC_SEND_RING_BUFFER_SIZE ;
 int SERIO_8042_XL ;
 int dev_name (int *) ;
 int device_init_wakeup (int *,int) ;
 int hv_kbd_connect_to_vsp (struct hv_device*) ;
 int hv_kbd_on_channel_callback ;
 int hv_kbd_start ;
 int hv_kbd_stop ;
 int hv_set_drvdata (struct hv_device*,struct serio*) ;
 int init_completion (int *) ;
 int kfree (struct serio*) ;
 struct serio* kzalloc (int,int ) ;
 int serio_register_port (struct serio*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,int ,int) ;
 int vmbus_close (int ) ;
 int vmbus_open (int ,int ,int ,int *,int ,int ,struct hv_device*) ;

__attribute__((used)) static int hv_kbd_probe(struct hv_device *hv_dev,
   const struct hv_vmbus_device_id *dev_id)
{
 struct hv_kbd_dev *kbd_dev;
 struct serio *hv_serio;
 int error;

 kbd_dev = kzalloc(sizeof(struct hv_kbd_dev), GFP_KERNEL);
 hv_serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!kbd_dev || !hv_serio) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 kbd_dev->hv_dev = hv_dev;
 kbd_dev->hv_serio = hv_serio;
 spin_lock_init(&kbd_dev->lock);
 init_completion(&kbd_dev->wait_event);
 hv_set_drvdata(hv_dev, kbd_dev);

 hv_serio->dev.parent = &hv_dev->device;
 hv_serio->id.type = SERIO_8042_XL;
 hv_serio->port_data = kbd_dev;
 strlcpy(hv_serio->name, dev_name(&hv_dev->device),
  sizeof(hv_serio->name));
 strlcpy(hv_serio->phys, dev_name(&hv_dev->device),
  sizeof(hv_serio->phys));

 hv_serio->start = hv_kbd_start;
 hv_serio->stop = hv_kbd_stop;

 error = vmbus_open(hv_dev->channel,
      KBD_VSC_SEND_RING_BUFFER_SIZE,
      KBD_VSC_RECV_RING_BUFFER_SIZE,
      ((void*)0), 0,
      hv_kbd_on_channel_callback,
      hv_dev);
 if (error)
  goto err_free_mem;

 error = hv_kbd_connect_to_vsp(hv_dev);
 if (error)
  goto err_close_vmbus;

 serio_register_port(kbd_dev->hv_serio);

 device_init_wakeup(&hv_dev->device, 1);

 return 0;

err_close_vmbus:
 vmbus_close(hv_dev->channel);
err_free_mem:
 kfree(hv_serio);
 kfree(kbd_dev);
 return error;
}
