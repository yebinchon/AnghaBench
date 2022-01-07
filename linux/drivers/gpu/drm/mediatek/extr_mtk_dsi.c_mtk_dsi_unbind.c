
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int ddp_comp; int host; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct mtk_dsi* dev_get_drvdata (struct device*) ;
 int mipi_dsi_host_unregister (int *) ;
 int mtk_ddp_comp_unregister (struct drm_device*,int *) ;
 int mtk_dsi_destroy_conn_enc (struct mtk_dsi*) ;

__attribute__((used)) static void mtk_dsi_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct drm_device *drm = data;
 struct mtk_dsi *dsi = dev_get_drvdata(dev);

 mtk_dsi_destroy_conn_enc(dsi);
 mipi_dsi_host_unregister(&dsi->host);
 mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
}
