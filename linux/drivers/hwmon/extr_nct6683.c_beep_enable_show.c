
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct6683_data {int update_lock; int sioreg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NCT6683_CR_BEEP_MASK ;
 int NCT6683_LD_HWM ;
 int NCT6683_REG_CR_BEEP ;
 struct nct6683_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int superio_enter (int ) ;
 int superio_exit (int ) ;
 int superio_inb (int ,int ) ;
 int superio_select (int ,int ) ;

__attribute__((used)) static ssize_t
beep_enable_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct nct6683_data *data = dev_get_drvdata(dev);
 int ret;
 u8 reg;

 mutex_lock(&data->update_lock);

 ret = superio_enter(data->sioreg);
 if (ret)
  goto error;
 superio_select(data->sioreg, NCT6683_LD_HWM);
 reg = superio_inb(data->sioreg, NCT6683_REG_CR_BEEP);
 superio_exit(data->sioreg);

 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%u\n", !!(reg & NCT6683_CR_BEEP_MASK));

error:
 mutex_unlock(&data->update_lock);
 return ret;
}
