
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* funcs; } ;
struct rockchip_dp_device {int adp; TYPE_2__ encoder; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* destroy ) (TYPE_2__*) ;} ;


 int ENODEV ;
 int ERR_PTR (int ) ;
 int analogix_dp_unbind (int ) ;
 struct rockchip_dp_device* dev_get_drvdata (struct device*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void rockchip_dp_unbind(struct device *dev, struct device *master,
          void *data)
{
 struct rockchip_dp_device *dp = dev_get_drvdata(dev);

 analogix_dp_unbind(dp->adp);
 dp->encoder.funcs->destroy(&dp->encoder);

 dp->adp = ERR_PTR(-ENODEV);
}
