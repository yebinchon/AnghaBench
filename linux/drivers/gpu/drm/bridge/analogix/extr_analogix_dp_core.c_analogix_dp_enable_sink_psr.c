
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {int psr_supported; int dev; int aux; } ;


 unsigned char DP_PSR_CRC_VERIFICATION ;
 unsigned char DP_PSR_ENABLE ;
 int DP_PSR_EN_CFG ;
 int analogix_dp_enable_psr_crc (struct analogix_dp_device*) ;
 int dev_err (int ,char*) ;
 int drm_dp_dpcd_readb (int *,int ,unsigned char*) ;
 int drm_dp_dpcd_writeb (int *,int ,unsigned char) ;

__attribute__((used)) static int analogix_dp_enable_sink_psr(struct analogix_dp_device *dp)
{
 unsigned char psr_en;
 int ret;


 ret = drm_dp_dpcd_readb(&dp->aux, DP_PSR_EN_CFG, &psr_en);
 if (ret != 1) {
  dev_err(dp->dev, "failed to get psr config\n");
  goto end;
 }

 psr_en &= ~DP_PSR_ENABLE;
 ret = drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
 if (ret != 1) {
  dev_err(dp->dev, "failed to disable panel psr\n");
  goto end;
 }


 psr_en = DP_PSR_CRC_VERIFICATION;
 ret = drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
 if (ret != 1) {
  dev_err(dp->dev, "failed to set panel psr\n");
  goto end;
 }


 psr_en = DP_PSR_ENABLE | DP_PSR_CRC_VERIFICATION;
 ret = drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
 if (ret != 1) {
  dev_err(dp->dev, "failed to set panel psr\n");
  goto end;
 }

 analogix_dp_enable_psr_crc(dp);

 dp->psr_supported = 1;

 return 0;
end:
 dev_err(dp->dev, "enable psr fail, force to disable psr\n");

 return ret;
}
