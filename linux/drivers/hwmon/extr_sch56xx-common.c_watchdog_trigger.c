
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct sch56xx_watchdog_data {int io_lock; int watchdog_preset; int addr; } ;


 int SCH56XX_REG_WDOG_PRESET ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int sch56xx_write_virtual_reg (int ,int ,int ) ;
 struct sch56xx_watchdog_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_trigger(struct watchdog_device *wddev)
{
 struct sch56xx_watchdog_data *data = watchdog_get_drvdata(wddev);
 int ret;


 mutex_lock(data->io_lock);
 ret = sch56xx_write_virtual_reg(data->addr, SCH56XX_REG_WDOG_PRESET,
     data->watchdog_preset);
 mutex_unlock(data->io_lock);

 return ret;
}
