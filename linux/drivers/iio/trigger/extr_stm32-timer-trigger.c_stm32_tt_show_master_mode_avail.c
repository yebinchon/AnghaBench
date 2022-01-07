
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 unsigned int MASTER_MODE2_MAX ;
 unsigned int MASTER_MODE_MAX ;
 scalar_t__ PAGE_SIZE ;
 int * master_mode_table ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ) ;
 scalar_t__ stm32_timer_is_trgo2_name (int ) ;
 struct iio_trigger* to_iio_trigger (struct device*) ;

__attribute__((used)) static ssize_t stm32_tt_show_master_mode_avail(struct device *dev,
            struct device_attribute *attr,
            char *buf)
{
 struct iio_trigger *trig = to_iio_trigger(dev);
 unsigned int i, master_mode_max;
 size_t len = 0;

 if (stm32_timer_is_trgo2_name(trig->name))
  master_mode_max = MASTER_MODE2_MAX;
 else
  master_mode_max = MASTER_MODE_MAX;

 for (i = 0; i <= master_mode_max; i++)
  len += scnprintf(buf + len, PAGE_SIZE - len,
   "%s ", master_mode_table[i]);


 buf[len - 1] = '\n';

 return len;
}
