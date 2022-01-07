
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int HVS_READ (int ) ;
 int SCALER_DISPCTRL ;
 int SCALER_DISPCTRL_ENABLE ;
 int WARN_ON_ONCE (int) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void require_hvs_enabled(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 WARN_ON_ONCE((HVS_READ(SCALER_DISPCTRL) & SCALER_DISPCTRL_ENABLE) !=
       SCALER_DISPCTRL_ENABLE);
}
