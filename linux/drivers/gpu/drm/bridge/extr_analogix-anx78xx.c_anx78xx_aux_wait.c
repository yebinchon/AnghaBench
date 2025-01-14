
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 int AUX_WAIT_TIMEOUT_MS ;
 int DRM_ERROR (char*,...) ;
 int ETIMEDOUT ;
 size_t I2C_IDX_TX_P0 ;
 int SP_AUX_CH_STATUS_REG ;
 unsigned int SP_AUX_STATUS ;
 int anx78xx_aux_op_finished (struct anx78xx*) ;
 int jiffies ;
 int msecs_to_jiffies (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 scalar_t__ time_after (int,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int anx78xx_aux_wait(struct anx78xx *anx78xx)
{
 unsigned long timeout;
 unsigned int status;
 int err;

 timeout = jiffies + msecs_to_jiffies(AUX_WAIT_TIMEOUT_MS) + 1;

 while (!anx78xx_aux_op_finished(anx78xx)) {
  if (time_after(jiffies, timeout)) {
   if (!anx78xx_aux_op_finished(anx78xx)) {
    DRM_ERROR("Timed out waiting AUX to finish\n");
    return -ETIMEDOUT;
   }

   break;
  }

  usleep_range(1000, 2000);
 }


 err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_CH_STATUS_REG,
     &status);
 if (err < 0) {
  DRM_ERROR("Failed to read from AUX channel: %d\n", err);
  return err;
 }

 if (status & SP_AUX_STATUS) {
  DRM_ERROR("Failed to wait for AUX channel (status: %02x)\n",
     status);
  return -ETIMEDOUT;
 }

 return 0;
}
