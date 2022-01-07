
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct platform_device {int dev; } ;
struct msm_gpu {struct drm_device* dev; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dev_pm_opp {int dummy; } ;


 int IS_ERR (struct dev_pm_opp*) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_exact (int *,int,int) ;
 int dev_pm_opp_get_voltage (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;

__attribute__((used)) static inline uint32_t _get_mvolts(struct msm_gpu *gpu, uint32_t freq)
{
 struct drm_device *dev = gpu->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct platform_device *pdev = priv->gpu_pdev;
 struct dev_pm_opp *opp;
 u32 ret = 0;

 opp = dev_pm_opp_find_freq_exact(&pdev->dev, freq, 1);

 if (!IS_ERR(opp)) {
  ret = dev_pm_opp_get_voltage(opp) / 1000;
  dev_pm_opp_put(opp);
 }

 return ret;
}
