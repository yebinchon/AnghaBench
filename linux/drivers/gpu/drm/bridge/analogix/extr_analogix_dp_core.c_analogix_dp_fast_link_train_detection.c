
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct analogix_dp_device {int fast_train_enable; int dev; int aux; } ;


 int DP_MAX_DOWNSPREAD ;
 int DP_NO_AUX_HANDSHAKE_LINK_TRAINING ;
 int dev_dbg (int ,char*,char*) ;
 int dev_err (int ,char*,int) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;

__attribute__((used)) static int analogix_dp_fast_link_train_detection(struct analogix_dp_device *dp)
{
 int ret;
 u8 spread;

 ret = drm_dp_dpcd_readb(&dp->aux, DP_MAX_DOWNSPREAD, &spread);
 if (ret != 1) {
  dev_err(dp->dev, "failed to read downspread %d\n", ret);
  return ret;
 }
 dp->fast_train_enable = !!(spread & DP_NO_AUX_HANDSHAKE_LINK_TRAINING);
 dev_dbg(dp->dev, "fast link training %s\n",
  dp->fast_train_enable ? "supported" : "unsupported");
 return 0;
}
