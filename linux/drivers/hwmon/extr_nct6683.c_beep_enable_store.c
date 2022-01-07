
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct6683_data {int update_lock; int sioreg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int NCT6683_CR_BEEP_MASK ;
 int NCT6683_LD_HWM ;
 int NCT6683_REG_CR_BEEP ;
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
beep_enable_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct nct6683_data *data = dev_get_drvdata(dev);
 unsigned long val;
 u8 reg;
 int ret;

 if (kstrtoul(buf, 10, &val) || (val != 0 && val != 1))
  return -EINVAL;

 mutex_lock(&data->update_lock);

 ret = superio_enter(data->sioreg);
 if (ret) {
  count = ret;
  goto error;
 }

 superio_select(data->sioreg, NCT6683_LD_HWM);
 reg = superio_inb(data->sioreg, NCT6683_REG_CR_BEEP);
 if (val)
  reg |= NCT6683_CR_BEEP_MASK;
 else
  reg &= ~NCT6683_CR_BEEP_MASK;
 superio_outb(data->sioreg, NCT6683_REG_CR_BEEP, reg);
 superio_exit(data->sioreg);
error:
 mutex_unlock(&data->update_lock);
 return count;
}
