
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int parent; int * type; int * bus; } ;
struct i2c_adapter {scalar_t__ timeout; scalar_t__ nr; int dev_released; TYPE_1__ dev; int * name; int userspace_clients; int userspace_clients_lock; int mux_lock; int bus_lock; scalar_t__ locked_flags; int * lock_ops; int algo; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ HZ ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN (int,char*) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ __i2c_first_dynamic_bus_num ;
 int __process_new_adapter ;
 int bus_for_each_drv (int *,int *,struct i2c_adapter*,int ) ;
 int class_compat_create_link (int ,TYPE_1__*,int ) ;
 int core_lock ;
 int dev_dbg (TYPE_1__*,char*,int *) ;
 int dev_set_name (TYPE_1__*,char*,scalar_t__) ;
 int dev_warn (TYPE_1__*,char*) ;
 int device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int i2c_acpi_install_space_handler (struct i2c_adapter*) ;
 int i2c_acpi_register_devices (struct i2c_adapter*) ;
 int i2c_adapter_compat_class ;
 int i2c_adapter_idr ;
 int i2c_adapter_lock_ops ;
 int i2c_adapter_type ;
 int i2c_bus_type ;
 int i2c_init_recovery (struct i2c_adapter*) ;
 int i2c_scan_static_board_info (struct i2c_adapter*) ;
 int i2c_setup_host_notify_irq_domain (struct i2c_adapter*) ;
 int idr_remove (int *,scalar_t__) ;
 int init_completion (int *) ;
 int is_registered ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_i2c_register_devices (struct i2c_adapter*) ;
 int of_i2c_setup_smbus_alert (struct i2c_adapter*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_no_callbacks (TYPE_1__*) ;
 int pm_suspend_ignore_children (TYPE_1__*,int) ;
 int pr_err (char*,int *,...) ;
 int rt_mutex_init (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int i2c_register_adapter(struct i2c_adapter *adap)
{
 int res = -EINVAL;


 if (WARN_ON(!is_registered)) {
  res = -EAGAIN;
  goto out_list;
 }


 if (WARN(!adap->name[0], "i2c adapter has no name"))
  goto out_list;

 if (!adap->algo) {
  pr_err("adapter '%s': no algo supplied!\n", adap->name);
  goto out_list;
 }

 if (!adap->lock_ops)
  adap->lock_ops = &i2c_adapter_lock_ops;

 adap->locked_flags = 0;
 rt_mutex_init(&adap->bus_lock);
 rt_mutex_init(&adap->mux_lock);
 mutex_init(&adap->userspace_clients_lock);
 INIT_LIST_HEAD(&adap->userspace_clients);


 if (adap->timeout == 0)
  adap->timeout = HZ;


 res = i2c_setup_host_notify_irq_domain(adap);
 if (res) {
  pr_err("adapter '%s': can't create Host Notify IRQs (%d)\n",
         adap->name, res);
  goto out_list;
 }

 dev_set_name(&adap->dev, "i2c-%d", adap->nr);
 adap->dev.bus = &i2c_bus_type;
 adap->dev.type = &i2c_adapter_type;
 res = device_register(&adap->dev);
 if (res) {
  pr_err("adapter '%s': can't register device (%d)\n", adap->name, res);
  goto out_list;
 }

 res = of_i2c_setup_smbus_alert(adap);
 if (res)
  goto out_reg;

 dev_dbg(&adap->dev, "adapter [%s] registered\n", adap->name);

 pm_runtime_no_callbacks(&adap->dev);
 pm_suspend_ignore_children(&adap->dev, 1);
 pm_runtime_enable(&adap->dev);
 i2c_init_recovery(adap);


 of_i2c_register_devices(adap);
 i2c_acpi_register_devices(adap);
 i2c_acpi_install_space_handler(adap);

 if (adap->nr < __i2c_first_dynamic_bus_num)
  i2c_scan_static_board_info(adap);


 mutex_lock(&core_lock);
 bus_for_each_drv(&i2c_bus_type, ((void*)0), adap, __process_new_adapter);
 mutex_unlock(&core_lock);

 return 0;

out_reg:
 init_completion(&adap->dev_released);
 device_unregister(&adap->dev);
 wait_for_completion(&adap->dev_released);
out_list:
 mutex_lock(&core_lock);
 idr_remove(&i2c_adapter_idr, adap->nr);
 mutex_unlock(&core_lock);
 return res;
}
