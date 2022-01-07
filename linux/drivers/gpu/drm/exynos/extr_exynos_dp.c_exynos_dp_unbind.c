
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* funcs; } ;
struct exynos_dp_device {TYPE_2__ encoder; int adp; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* destroy ) (TYPE_2__*) ;} ;


 int analogix_dp_unbind (int ) ;
 struct exynos_dp_device* dev_get_drvdata (struct device*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void exynos_dp_unbind(struct device *dev, struct device *master,
        void *data)
{
 struct exynos_dp_device *dp = dev_get_drvdata(dev);

 analogix_dp_unbind(dp->adp);
 dp->encoder.funcs->destroy(&dp->encoder);
}
