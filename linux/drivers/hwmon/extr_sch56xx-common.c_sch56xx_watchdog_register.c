
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int timeout; int min_timeout; int max_timeout; int status; struct device* parent; int * ops; TYPE_1__* info; } ;
struct TYPE_4__ {int options; int firmware_version; int identity; } ;
struct sch56xx_watchdog_data {int watchdog_preset; int watchdog_control; int watchdog_output_enable; TYPE_2__ wddev; TYPE_1__ wdinfo; struct mutex* io_lock; int addr; } ;
struct mutex {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int SCH56XX_REG_WDOG_CONTROL ;
 int SCH56XX_REG_WDOG_OUTPUT_ENABLE ;
 int SCH56XX_WDOG_OUTPUT_ENABLE ;
 int SCH56XX_WDOG_TIME_BASE_SEC ;
 int WDIOF_KEEPALIVEPING ;
 int WDIOF_MAGICCLOSE ;
 int WDIOF_SETTIMEOUT ;
 int WDOG_ACTIVE ;
 int WDOG_NO_WAY_OUT ;
 int kfree (struct sch56xx_watchdog_data*) ;
 struct sch56xx_watchdog_data* kzalloc (int,int ) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 scalar_t__ nowayout ;
 int pr_err (char*,int) ;
 int pr_warn (char*) ;
 int sch56xx_read_virtual_reg (int ,int ) ;
 int set_bit (int ,int *) ;
 int strlcpy (int ,char*,int) ;
 int watchdog_ops ;
 int watchdog_register_device (TYPE_2__*) ;
 int watchdog_set_drvdata (TYPE_2__*,struct sch56xx_watchdog_data*) ;

struct sch56xx_watchdog_data *sch56xx_watchdog_register(struct device *parent,
 u16 addr, u32 revision, struct mutex *io_lock, int check_enabled)
{
 struct sch56xx_watchdog_data *data;
 int err, control, output_enable;


 mutex_lock(io_lock);
 control =
  sch56xx_read_virtual_reg(addr, SCH56XX_REG_WDOG_CONTROL);
 output_enable =
  sch56xx_read_virtual_reg(addr, SCH56XX_REG_WDOG_OUTPUT_ENABLE);
 mutex_unlock(io_lock);

 if (control < 0)
  return ((void*)0);
 if (output_enable < 0)
  return ((void*)0);
 if (check_enabled && !(output_enable & SCH56XX_WDOG_OUTPUT_ENABLE)) {
  pr_warn("Watchdog not enabled by BIOS, not registering\n");
  return ((void*)0);
 }

 data = kzalloc(sizeof(struct sch56xx_watchdog_data), GFP_KERNEL);
 if (!data)
  return ((void*)0);

 data->addr = addr;
 data->io_lock = io_lock;

 strlcpy(data->wdinfo.identity, "sch56xx watchdog",
  sizeof(data->wdinfo.identity));
 data->wdinfo.firmware_version = revision;
 data->wdinfo.options = WDIOF_KEEPALIVEPING | WDIOF_SETTIMEOUT;
 if (!nowayout)
  data->wdinfo.options |= WDIOF_MAGICCLOSE;

 data->wddev.info = &data->wdinfo;
 data->wddev.ops = &watchdog_ops;
 data->wddev.parent = parent;
 data->wddev.timeout = 60;
 data->wddev.min_timeout = 1;
 data->wddev.max_timeout = 255 * 60;
 if (nowayout)
  set_bit(WDOG_NO_WAY_OUT, &data->wddev.status);
 if (output_enable & SCH56XX_WDOG_OUTPUT_ENABLE)
  set_bit(WDOG_ACTIVE, &data->wddev.status);




 if (control & SCH56XX_WDOG_TIME_BASE_SEC)
  data->watchdog_preset = 60;
 else
  data->watchdog_preset = 1;

 data->watchdog_control = control;
 data->watchdog_output_enable = output_enable;

 watchdog_set_drvdata(&data->wddev, data);
 err = watchdog_register_device(&data->wddev);
 if (err) {
  pr_err("Registering watchdog chardev: %d\n", err);
  kfree(data);
  return ((void*)0);
 }

 return data;
}
