
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct exynos_mic* driver_private; } ;
struct exynos_mic {TYPE_1__ bridge; } ;
struct device {int dummy; } ;


 struct exynos_mic* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int exynos_mic_bind(struct device *dev, struct device *master,
      void *data)
{
 struct exynos_mic *mic = dev_get_drvdata(dev);

 mic->bridge.driver_private = mic;

 return 0;
}
