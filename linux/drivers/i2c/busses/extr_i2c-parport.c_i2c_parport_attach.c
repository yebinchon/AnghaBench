
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct parport {int number; int name; TYPE_3__* physport; } ;
struct pardev_cb {struct i2c_par* private; int irq_func; int flags; } ;
struct TYPE_16__ {int parent; } ;
struct TYPE_13__ {TYPE_2__ dev; TYPE_8__* algo_data; int name; int class; int owner; } ;
struct TYPE_19__ {int udelay; struct parport* data; int * getscl; } ;
struct i2c_par {TYPE_4__* pdev; int node; scalar_t__ ara; int alert_data; TYPE_10__ adapter; TYPE_8__ algo_data; } ;
typedef int i2c_parport_cb ;
struct TYPE_20__ {scalar_t__ val; } ;
struct TYPE_18__ {int dev; } ;
struct TYPE_17__ {int dev; } ;
struct TYPE_15__ {int val; } ;
struct TYPE_14__ {scalar_t__ smbus_alert; TYPE_9__ init; TYPE_1__ getscl; } ;


 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int MAX_DEVICE ;
 int PARPORT_FLAG_EXCL ;
 int THIS_MODULE ;
 int adapter_list ;
 int adapter_list_lock ;
 TYPE_12__* adapter_parm ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ i2c_bit_add_bus (TYPE_10__*) ;
 int i2c_parport_irq ;
 scalar_t__ i2c_setup_smbus_alert (TYPE_10__*,int *) ;
 int kfree (struct i2c_par*) ;
 struct i2c_par* kzalloc (int,int ) ;
 int line_set (struct parport*,int,TYPE_9__*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct pardev_cb*,int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* parport ;
 TYPE_8__ parport_algo_data ;
 scalar_t__ parport_claim_or_block (TYPE_4__*) ;
 int parport_disable_irq (struct parport*) ;
 int parport_enable_irq (struct parport*) ;
 TYPE_4__* parport_register_dev_model (struct parport*,char*,struct pardev_cb*,int) ;
 int parport_release (TYPE_4__*) ;
 int parport_setscl (struct parport*,int) ;
 int parport_setsda (struct parport*,int) ;
 int parport_unregister_device (TYPE_4__*) ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;
 int strlcpy (int ,char*,int) ;
 size_t type ;

__attribute__((used)) static void i2c_parport_attach(struct parport *port)
{
 struct i2c_par *adapter;
 int i;
 struct pardev_cb i2c_parport_cb;

 for (i = 0; i < MAX_DEVICE; i++) {
  if (parport[i] == -1)
   continue;
  if (port->number == parport[i])
   break;
 }
 if (i == MAX_DEVICE) {
  pr_debug("Not using parport%d.\n", port->number);
  return;
 }

 adapter = kzalloc(sizeof(struct i2c_par), GFP_KERNEL);
 if (!adapter)
  return;
 memset(&i2c_parport_cb, 0, sizeof(i2c_parport_cb));
 i2c_parport_cb.flags = PARPORT_FLAG_EXCL;
 i2c_parport_cb.irq_func = i2c_parport_irq;
 i2c_parport_cb.private = adapter;

 pr_debug("attaching to %s\n", port->name);
 parport_disable_irq(port);
 adapter->pdev = parport_register_dev_model(port, "i2c-parport",
         &i2c_parport_cb, i);
 if (!adapter->pdev) {
  pr_err("Unable to register with parport\n");
  goto err_free;
 }


 adapter->adapter.owner = THIS_MODULE;
 adapter->adapter.class = I2C_CLASS_HWMON;
 strlcpy(adapter->adapter.name, "Parallel port adapter",
  sizeof(adapter->adapter.name));
 adapter->algo_data = parport_algo_data;

 if (!adapter_parm[type].getscl.val) {
  adapter->algo_data.getscl = ((void*)0);
  adapter->algo_data.udelay = 50;
 }
 adapter->algo_data.data = port;
 adapter->adapter.algo_data = &adapter->algo_data;
 adapter->adapter.dev.parent = port->physport->dev;

 if (parport_claim_or_block(adapter->pdev) < 0) {
  dev_err(&adapter->pdev->dev,
   "Could not claim parallel port\n");
  goto err_unregister;
 }


 parport_setsda(port, 1);
 parport_setscl(port, 1);

 if (adapter_parm[type].init.val) {
  line_set(port, 1, &adapter_parm[type].init);

  msleep(100);
 }

 if (i2c_bit_add_bus(&adapter->adapter) < 0) {
  dev_err(&adapter->pdev->dev, "Unable to register with I2C\n");
  goto err_unregister;
 }


 if (adapter_parm[type].smbus_alert) {
  adapter->ara = i2c_setup_smbus_alert(&adapter->adapter,
           &adapter->alert_data);
  if (adapter->ara)
   parport_enable_irq(port);
  else
   dev_warn(&adapter->pdev->dev,
     "Failed to register ARA client\n");
 }


 mutex_lock(&adapter_list_lock);
 list_add_tail(&adapter->node, &adapter_list);
 mutex_unlock(&adapter_list_lock);
 return;

 err_unregister:
 parport_release(adapter->pdev);
 parport_unregister_device(adapter->pdev);
 err_free:
 kfree(adapter);
}
