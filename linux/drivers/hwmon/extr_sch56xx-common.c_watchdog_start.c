
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int dummy; } ;
struct sch56xx_watchdog_data {int watchdog_preset; int watchdog_output_enable; int io_lock; scalar_t__ addr; } ;


 int SCH56XX_REG_WDOG_OUTPUT_ENABLE ;
 int SCH56XX_REG_WDOG_PRESET ;
 int SCH56XX_WDOG_OUTPUT_ENABLE ;
 int inb (scalar_t__) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int outb (int,scalar_t__) ;
 int sch56xx_write_virtual_reg (scalar_t__,int ,int) ;
 struct sch56xx_watchdog_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_start(struct watchdog_device *wddev)
{
 struct sch56xx_watchdog_data *data = watchdog_get_drvdata(wddev);
 int ret;
 u8 val;
 mutex_lock(data->io_lock);


 ret = sch56xx_write_virtual_reg(data->addr, SCH56XX_REG_WDOG_PRESET,
     data->watchdog_preset);
 if (ret)
  goto leave;


 val = data->watchdog_output_enable | SCH56XX_WDOG_OUTPUT_ENABLE;
 ret = sch56xx_write_virtual_reg(data->addr,
     SCH56XX_REG_WDOG_OUTPUT_ENABLE, val);
 if (ret)
  goto leave;

 data->watchdog_output_enable = val;


 val = inb(data->addr + 9);
 if (val & 0x01)
  outb(0x01, data->addr + 9);

leave:
 mutex_unlock(data->io_lock);
 return ret;
}
