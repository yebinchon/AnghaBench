
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {int dev; int force_hpd; } ;


 int DP_TIMEOUT_LOOP_COUNT ;
 int EINVAL ;
 int ETIMEDOUT ;
 int analogix_dp_force_hpd (struct analogix_dp_device*) ;
 scalar_t__ analogix_dp_get_plug_in_status (struct analogix_dp_device*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int analogix_dp_detect_hpd(struct analogix_dp_device *dp)
{
 int timeout_loop = 0;

 while (timeout_loop < DP_TIMEOUT_LOOP_COUNT) {
  if (analogix_dp_get_plug_in_status(dp) == 0)
   return 0;

  timeout_loop++;
  usleep_range(1000, 1100);
 }






 if (!dp->force_hpd)
  return -ETIMEDOUT;






 dev_dbg(dp->dev, "failed to get hpd plug status, try to force hpd\n");

 analogix_dp_force_hpd(dp);

 if (analogix_dp_get_plug_in_status(dp) != 0) {
  dev_err(dp->dev, "failed to get hpd plug in status\n");
  return -EINVAL;
 }

 dev_dbg(dp->dev, "success to get plug in status after force hpd\n");

 return 0;
}
