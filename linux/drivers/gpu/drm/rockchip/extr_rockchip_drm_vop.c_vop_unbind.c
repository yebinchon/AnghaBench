
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int dclk; int hclk; int aclk; scalar_t__ rgb; } ;
struct device {int dummy; } ;


 int clk_unprepare (int ) ;
 struct vop* dev_get_drvdata (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int rockchip_rgb_fini (scalar_t__) ;
 int vop_destroy_crtc (struct vop*) ;

__attribute__((used)) static void vop_unbind(struct device *dev, struct device *master, void *data)
{
 struct vop *vop = dev_get_drvdata(dev);

 if (vop->rgb)
  rockchip_rgb_fini(vop->rgb);

 pm_runtime_disable(dev);
 vop_destroy_crtc(vop);

 clk_unprepare(vop->aclk);
 clk_unprepare(vop->hclk);
 clk_unprepare(vop->dclk);
}
