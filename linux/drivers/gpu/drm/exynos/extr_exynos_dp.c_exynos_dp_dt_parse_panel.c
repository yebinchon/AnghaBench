
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_dp_device {TYPE_1__* dev; int vm; } ;
struct TYPE_2__ {int of_node; } ;


 int DRM_DEV_ERROR (TYPE_1__*,char*,int) ;
 int OF_USE_NATIVE_MODE ;
 int of_get_videomode (int ,int *,int ) ;

__attribute__((used)) static int exynos_dp_dt_parse_panel(struct exynos_dp_device *dp)
{
 int ret;

 ret = of_get_videomode(dp->dev->of_node, &dp->vm, OF_USE_NATIVE_MODE);
 if (ret) {
  DRM_DEV_ERROR(dp->dev,
         "failed: of_get_videomode() : %d\n", ret);
  return ret;
 }
 return 0;
}
