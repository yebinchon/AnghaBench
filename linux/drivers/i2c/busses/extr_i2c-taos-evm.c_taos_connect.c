
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct i2c_adapter {int name; TYPE_1__ dev; struct serio* algo_data; int * algo; int owner; } ;
struct taos_data {scalar_t__ state; int client; int buffer; int pos; struct i2c_adapter adapter; } ;
struct serio_driver {int dummy; } ;
struct serio {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TAOS_CMD_ECHO_OFF ;
 int TAOS_CMD_RESET ;
 scalar_t__ TAOS_STATE_EOFF ;
 scalar_t__ TAOS_STATE_IDLE ;
 scalar_t__ TAOS_STATE_INIT ;
 int THIS_MODULE ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int kfree (struct taos_data*) ;
 struct taos_data* kzalloc (int,int ) ;
 int msecs_to_jiffies (int) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct taos_data*) ;
 int serio_write (struct serio*,int ) ;
 int strlcpy (int ,char*,int) ;
 char* taos_adapter_name (int ) ;
 int taos_algorithm ;
 int taos_instantiate_device (struct i2c_adapter*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int wq ;

__attribute__((used)) static int taos_connect(struct serio *serio, struct serio_driver *drv)
{
 struct taos_data *taos;
 struct i2c_adapter *adapter;
 char *name;
 int err;

 taos = kzalloc(sizeof(struct taos_data), GFP_KERNEL);
 if (!taos) {
  err = -ENOMEM;
  goto exit;
 }
 taos->state = TAOS_STATE_INIT;
 serio_set_drvdata(serio, taos);

 err = serio_open(serio, drv);
 if (err)
  goto exit_kfree;

 adapter = &taos->adapter;
 adapter->owner = THIS_MODULE;
 adapter->algo = &taos_algorithm;
 adapter->algo_data = serio;
 adapter->dev.parent = &serio->dev;


 serio_write(serio, TAOS_CMD_RESET);
 wait_event_interruptible_timeout(wq, taos->state == TAOS_STATE_IDLE,
      msecs_to_jiffies(2000));

 if (taos->state != TAOS_STATE_IDLE) {
  err = -ENODEV;
  dev_err(&serio->dev, "TAOS EVM reset failed (state=%d, "
   "pos=%d)\n", taos->state, taos->pos);
  goto exit_close;
 }

 name = taos_adapter_name(taos->buffer);
 if (!name) {
  err = -ENODEV;
  dev_err(&serio->dev, "TAOS EVM identification failed\n");
  goto exit_close;
 }
 strlcpy(adapter->name, name, sizeof(adapter->name));


 taos->state = TAOS_STATE_EOFF;
 serio_write(serio, TAOS_CMD_ECHO_OFF);

 wait_event_interruptible_timeout(wq, taos->state == TAOS_STATE_IDLE,
      msecs_to_jiffies(250));
 if (taos->state != TAOS_STATE_IDLE) {
  err = -ENODEV;
  dev_err(&serio->dev, "TAOS EVM echo off failed "
   "(state=%d)\n", taos->state);
  goto exit_close;
 }

 err = i2c_add_adapter(adapter);
 if (err)
  goto exit_close;
 dev_info(&serio->dev, "Connected to TAOS EVM\n");

 taos->client = taos_instantiate_device(adapter);
 return 0;

 exit_close:
 serio_close(serio);
 exit_kfree:
 kfree(taos);
 exit:
 return err;
}
