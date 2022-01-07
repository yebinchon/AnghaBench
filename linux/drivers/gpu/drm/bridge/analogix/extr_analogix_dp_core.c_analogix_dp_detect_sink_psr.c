
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {int dev; int aux; } ;


 unsigned char DP_PSR_IS_SUPPORTED ;
 int DP_PSR_SUPPORT ;
 int dev_dbg (int ,char*,unsigned char) ;
 int dev_err (int ,char*) ;
 int drm_dp_dpcd_readb (int *,int ,unsigned char*) ;

__attribute__((used)) static bool analogix_dp_detect_sink_psr(struct analogix_dp_device *dp)
{
 unsigned char psr_version;
 int ret;

 ret = drm_dp_dpcd_readb(&dp->aux, DP_PSR_SUPPORT, &psr_version);
 if (ret != 1) {
  dev_err(dp->dev, "failed to get PSR version, disable it\n");
  return 0;
 }

 dev_dbg(dp->dev, "Panel PSR version : %x\n", psr_version);
 return psr_version & DP_PSR_IS_SUPPORTED;
}
