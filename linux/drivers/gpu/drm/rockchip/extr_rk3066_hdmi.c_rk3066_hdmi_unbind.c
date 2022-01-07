
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct rk3066_hdmi {int hclk; int ddc; TYPE_3__ encoder; TYPE_4__ connector; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int (* destroy ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int (* destroy ) (TYPE_4__*) ;} ;


 int clk_disable_unprepare (int ) ;
 struct rk3066_hdmi* dev_get_drvdata (struct device*) ;
 int i2c_put_adapter (int ) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static void rk3066_hdmi_unbind(struct device *dev, struct device *master,
          void *data)
{
 struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);

 hdmi->connector.funcs->destroy(&hdmi->connector);
 hdmi->encoder.funcs->destroy(&hdmi->encoder);

 i2c_put_adapter(hdmi->ddc);
 clk_disable_unprepare(hdmi->hclk);
}
