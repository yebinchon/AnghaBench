
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct lm70 {int chip; int lock; struct spi_device* spi; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s16 ;


 int ERESTARTSYS ;





 int dev_dbg (struct device*,char*,int,int,int) ;
 struct lm70* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int spi_write_then_read (struct spi_device*,int *,int ,int*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t temp1_input_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lm70 *p_lm70 = dev_get_drvdata(dev);
 struct spi_device *spi = p_lm70->spi;
 int status, val = 0;
 u8 rxbuf[2];
 s16 raw = 0;

 if (mutex_lock_interruptible(&p_lm70->lock))
  return -ERESTARTSYS;





 status = spi_write_then_read(spi, ((void*)0), 0, &rxbuf[0], 2);
 if (status < 0) {
  dev_warn(dev, "spi_write_then_read failed with status %d\n",
    status);
  goto out;
 }
 raw = (rxbuf[0] << 8) + rxbuf[1];
 dev_dbg(dev, "rxbuf[0] : 0x%02x rxbuf[1] : 0x%02x raw=0x%04x\n",
  rxbuf[0], rxbuf[1], raw);
 switch (p_lm70->chip) {
 case 132:
  val = ((int)raw / 32) * 250;
  break;

 case 129:
 case 128:
 case 130:
  val = ((int)raw / 8) * 625 / 10;
  break;

 case 131:
  val = ((int)raw / 4) * 3125 / 100;
  break;
 }

 status = sprintf(buf, "%d\n", val);
out:
 mutex_unlock(&p_lm70->lock);
 return status;
}
