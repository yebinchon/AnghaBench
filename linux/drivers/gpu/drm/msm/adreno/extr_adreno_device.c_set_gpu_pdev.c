
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;



__attribute__((used)) static void set_gpu_pdev(struct drm_device *dev,
  struct platform_device *pdev)
{
 struct msm_drm_private *priv = dev->dev_private;
 priv->gpu_pdev = pdev;
}
