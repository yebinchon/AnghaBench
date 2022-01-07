
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_kona_i2c_dev {int device; scalar_t__ base; int done; } ;
typedef enum bcm_kona_cmd_t { ____Placeholder_bcm_kona_cmd_t } bcm_kona_cmd_t ;


 int BCM_CMD_NOACTION ;
 int ETIMEDOUT ;
 int I2C_TIMEOUT ;
 int IER_I2C_INT_EN_MASK ;
 scalar_t__ IER_OFFSET ;
 int bcm_kona_i2c_send_cmd_to_ctrl (struct bcm_kona_i2c_dev*,int) ;
 int bcm_kona_i2c_wait_if_busy (struct bcm_kona_i2c_dev*) ;
 int dev_err (int ,char*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int bcm_kona_send_i2c_cmd(struct bcm_kona_i2c_dev *dev,
     enum bcm_kona_cmd_t cmd)
{
 int rc;
 unsigned long time_left = msecs_to_jiffies(I2C_TIMEOUT);


 rc = bcm_kona_i2c_wait_if_busy(dev);
 if (rc < 0)
  return rc;


 writel(IER_I2C_INT_EN_MASK, dev->base + IER_OFFSET);


 reinit_completion(&dev->done);


 bcm_kona_i2c_send_cmd_to_ctrl(dev, cmd);


 time_left = wait_for_completion_timeout(&dev->done, time_left);


 writel(0, dev->base + IER_OFFSET);

 if (!time_left) {
  dev_err(dev->device, "controller timed out\n");
  rc = -ETIMEDOUT;
 }


 bcm_kona_i2c_send_cmd_to_ctrl(dev, BCM_CMD_NOACTION);

 return rc;
}
