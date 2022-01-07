
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk_disp_color {int data; int ddp_comp; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MTK_DISP_COLOR ;
 int component_add (struct device*,int *) ;
 int dev_err (struct device*,char*,int) ;
 struct mtk_disp_color* devm_kzalloc (struct device*,int,int ) ;
 int mtk_ddp_comp_get_id (int ,int ) ;
 int mtk_ddp_comp_init (struct device*,int ,int *,int,int *) ;
 int mtk_disp_color_component_ops ;
 int mtk_disp_color_funcs ;
 int of_device_get_match_data (struct device*) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_disp_color*) ;

__attribute__((used)) static int mtk_disp_color_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_disp_color *priv;
 int comp_id;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DISP_COLOR);
 if (comp_id < 0) {
  dev_err(dev, "Failed to identify by alias: %d\n", comp_id);
  return comp_id;
 }

 ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
    &mtk_disp_color_funcs);
 if (ret) {
  dev_err(dev, "Failed to initialize component: %d\n", ret);
  return ret;
 }

 priv->data = of_device_get_match_data(dev);

 platform_set_drvdata(pdev, priv);

 ret = component_add(dev, &mtk_disp_color_component_ops);
 if (ret)
  dev_err(dev, "Failed to add component: %d\n", ret);

 return ret;
}
