
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nct6775_data {int valid; int update_lock; int sioreg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int INTRUSION_ALARM_BASE ;
 int * NCT6775_CR_CASEOPEN_CLR_MASK ;
 int NCT6775_LD_ACPI ;
 int * NCT6775_REG_CR_CASEOPEN_CLR ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int superio_enter (int ) ;
 int superio_exit (int ) ;
 int superio_inb (int ,int ) ;
 int superio_outb (int ,int ,int ) ;
 int superio_select (int ,int ) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
clear_caseopen(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 int nr = to_sensor_dev_attr(attr)->index - INTRUSION_ALARM_BASE;
 unsigned long val;
 u8 reg;
 int ret;

 if (kstrtoul(buf, 10, &val) || val != 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);






 ret = superio_enter(data->sioreg);
 if (ret) {
  count = ret;
  goto error;
 }

 superio_select(data->sioreg, NCT6775_LD_ACPI);
 reg = superio_inb(data->sioreg, NCT6775_REG_CR_CASEOPEN_CLR[nr]);
 reg |= NCT6775_CR_CASEOPEN_CLR_MASK[nr];
 superio_outb(data->sioreg, NCT6775_REG_CR_CASEOPEN_CLR[nr], reg);
 reg &= ~NCT6775_CR_CASEOPEN_CLR_MASK[nr];
 superio_outb(data->sioreg, NCT6775_REG_CR_CASEOPEN_CLR[nr], reg);
 superio_exit(data->sioreg);

 data->valid = 0;
error:
 mutex_unlock(&data->update_lock);
 return count;
}
