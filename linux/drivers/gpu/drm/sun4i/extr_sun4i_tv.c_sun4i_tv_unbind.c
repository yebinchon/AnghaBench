
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tv {int clk; int encoder; int connector; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun4i_tv* dev_get_drvdata (struct device*) ;
 int drm_connector_cleanup (int *) ;
 int drm_encoder_cleanup (int *) ;

__attribute__((used)) static void sun4i_tv_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct sun4i_tv *tv = dev_get_drvdata(dev);

 drm_connector_cleanup(&tv->connector);
 drm_encoder_cleanup(&tv->encoder);
 clk_disable_unprepare(tv->clk);
}
