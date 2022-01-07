
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int dummy; } ;
typedef int ssize_t ;


 int CYAPA_CMD_DEV_STATUS ;
 int CYAPA_CMD_SOFT_RESET ;
 int CYAPA_DEV_NORMAL ;
 int EAGAIN ;
 int ETIMEDOUT ;
 int HZ ;
 int OP_RECALIBRATION_MASK ;
 int cyapa_read_byte (struct cyapa*,int ) ;
 int cyapa_write_byte (struct cyapa*,int ,int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 struct cyapa* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,int) ;
 int jiffies ;
 int msleep (int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;

__attribute__((used)) static ssize_t cyapa_gen3_do_calibrate(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct cyapa *cyapa = dev_get_drvdata(dev);
 unsigned long timeout;
 int ret;

 ret = cyapa_read_byte(cyapa, CYAPA_CMD_DEV_STATUS);
 if (ret < 0) {
  dev_err(dev, "Error reading dev status: %d\n", ret);
  goto out;
 }
 if ((ret & CYAPA_DEV_NORMAL) != CYAPA_DEV_NORMAL) {
  dev_warn(dev, "Trackpad device is busy, device state: 0x%02x\n",
    ret);
  ret = -EAGAIN;
  goto out;
 }

 ret = cyapa_write_byte(cyapa, CYAPA_CMD_SOFT_RESET,
          OP_RECALIBRATION_MASK);
 if (ret < 0) {
  dev_err(dev, "Failed to send calibrate command: %d\n",
   ret);
  goto out;
 }


 timeout = jiffies + 2 * HZ;
 do {





  msleep(100);
  ret = cyapa_read_byte(cyapa, CYAPA_CMD_DEV_STATUS);
  if (ret < 0) {
   dev_err(dev, "Error reading dev status: %d\n", ret);
   goto out;
  }
  if ((ret & CYAPA_DEV_NORMAL) == CYAPA_DEV_NORMAL) {
   dev_dbg(dev, "Calibration successful.\n");
   goto out;
  }
 } while (time_is_after_jiffies(timeout));

 dev_err(dev, "Failed to calibrate. Timeout.\n");
 ret = -ETIMEDOUT;

out:
 return ret < 0 ? ret : count;
}
