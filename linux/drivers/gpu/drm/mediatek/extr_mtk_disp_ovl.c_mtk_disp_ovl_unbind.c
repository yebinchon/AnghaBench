
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_ovl {int ddp_comp; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct mtk_disp_ovl* dev_get_drvdata (struct device*) ;
 int mtk_ddp_comp_unregister (struct drm_device*,int *) ;

__attribute__((used)) static void mtk_disp_ovl_unbind(struct device *dev, struct device *master,
    void *data)
{
 struct mtk_disp_ovl *priv = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;

 mtk_ddp_comp_unregister(drm_dev, &priv->ddp_comp);
}
