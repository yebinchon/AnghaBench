
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct6683_data {int valid; int update_lock; int sioreg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int NCT6683_CR_CASEOPEN_MASK ;
 int NCT6683_LD_ACPI ;
 int NCT6683_REG_CR_CASEOPEN ;
 struct nct6683_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int superio_enter (int ) ;
 int superio_exit (int ) ;
 int superio_inb (int ,int ) ;
 int superio_outb (int ,int ,int ) ;
 int superio_select (int ,int ) ;

__attribute__((used)) static ssize_t
intrusion0_alarm_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct nct6683_data *data = dev_get_drvdata(dev);
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

 superio_select(data->sioreg, NCT6683_LD_ACPI);
 reg = superio_inb(data->sioreg, NCT6683_REG_CR_CASEOPEN);
 reg |= NCT6683_CR_CASEOPEN_MASK;
 superio_outb(data->sioreg, NCT6683_REG_CR_CASEOPEN, reg);
 reg &= ~NCT6683_CR_CASEOPEN_MASK;
 superio_outb(data->sioreg, NCT6683_REG_CR_CASEOPEN, reg);
 superio_exit(data->sioreg);

 data->valid = 0;
error:
 mutex_unlock(&data->update_lock);
 return count;
}
