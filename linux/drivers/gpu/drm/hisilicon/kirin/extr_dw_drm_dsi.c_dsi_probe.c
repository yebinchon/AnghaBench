
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dw_dsi {struct dsi_hw_ctx* ctx; } ;
struct dsi_hw_ctx {int dummy; } ;
struct dsi_data {struct dsi_hw_ctx ctx; struct dw_dsi dsi; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int component_add (int *,int *) ;
 struct dsi_data* devm_kzalloc (int *,int,int ) ;
 int dsi_ops ;
 int dsi_parse_dt (struct platform_device*,struct dw_dsi*) ;
 int platform_set_drvdata (struct platform_device*,struct dsi_data*) ;

__attribute__((used)) static int dsi_probe(struct platform_device *pdev)
{
 struct dsi_data *data;
 struct dw_dsi *dsi;
 struct dsi_hw_ctx *ctx;
 int ret;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data) {
  DRM_ERROR("failed to allocate dsi data.\n");
  return -ENOMEM;
 }
 dsi = &data->dsi;
 ctx = &data->ctx;
 dsi->ctx = ctx;

 ret = dsi_parse_dt(pdev, dsi);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, data);

 return component_add(&pdev->dev, &dsi_ops);
}
