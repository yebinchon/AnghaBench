
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct analogix_dp_device {int dev; int aux; } ;
typedef scalar_t__ ssize_t ;


 int DP_PSR_STATUS ;
 int dev_err (int ,char*,scalar_t__) ;
 scalar_t__ drm_dp_dpcd_readb (int *,int ,scalar_t__*) ;

__attribute__((used)) static ssize_t analogix_dp_get_psr_status(struct analogix_dp_device *dp)
{
 ssize_t val;
 u8 status;

 val = drm_dp_dpcd_readb(&dp->aux, DP_PSR_STATUS, &status);
 if (val < 0) {
  dev_err(dp->dev, "PSR_STATUS read failed ret=%zd", val);
  return val;
 }
 return status;
}
