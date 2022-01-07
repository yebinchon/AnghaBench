
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_rdma {int ddp_comp; } ;
struct drm_device {int dummy; } ;
struct device {int of_node; } ;


 int dev_err (struct device*,char*,int ,int) ;
 struct mtk_disp_rdma* dev_get_drvdata (struct device*) ;
 int mtk_ddp_comp_register (struct drm_device*,int *) ;

__attribute__((used)) static int mtk_disp_rdma_bind(struct device *dev, struct device *master,
         void *data)
{
 struct mtk_disp_rdma *priv = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 int ret;

 ret = mtk_ddp_comp_register(drm_dev, &priv->ddp_comp);
 if (ret < 0) {
  dev_err(dev, "Failed to register component %pOF: %d\n",
   dev->of_node, ret);
  return ret;
 }

 return 0;

}
