
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dpi {int core_clock; int encoder; } ;
struct vc4_dev {int * dpi; } ;
struct drm_device {int dummy; } ;
struct device {int of_node; } ;


 int clk_disable_unprepare (int ) ;
 void* dev_get_drvdata (struct device*) ;
 int drm_encoder_cleanup (int ) ;
 int drm_of_panel_bridge_remove (int ,int ,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void vc4_dpi_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 struct vc4_dpi *dpi = dev_get_drvdata(dev);

 drm_of_panel_bridge_remove(dev->of_node, 0, 0);

 drm_encoder_cleanup(dpi->encoder);

 clk_disable_unprepare(dpi->core_clock);

 vc4->dpi = ((void*)0);
}
