
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rockchip_hdmi {int * grf_clk; TYPE_1__* dev; int * vpll_clk; int * regmap; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int DRM_DEV_ERROR (TYPE_1__*,char*) ;
 int ENOENT ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 int * syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
{
 struct device_node *np = hdmi->dev->of_node;

 hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 if (IS_ERR(hdmi->regmap)) {
  DRM_DEV_ERROR(hdmi->dev, "Unable to get rockchip,grf\n");
  return PTR_ERR(hdmi->regmap);
 }

 hdmi->vpll_clk = devm_clk_get(hdmi->dev, "vpll");
 if (PTR_ERR(hdmi->vpll_clk) == -ENOENT) {
  hdmi->vpll_clk = ((void*)0);
 } else if (PTR_ERR(hdmi->vpll_clk) == -EPROBE_DEFER) {
  return -EPROBE_DEFER;
 } else if (IS_ERR(hdmi->vpll_clk)) {
  DRM_DEV_ERROR(hdmi->dev, "failed to get grf clock\n");
  return PTR_ERR(hdmi->vpll_clk);
 }

 hdmi->grf_clk = devm_clk_get(hdmi->dev, "grf");
 if (PTR_ERR(hdmi->grf_clk) == -ENOENT) {
  hdmi->grf_clk = ((void*)0);
 } else if (PTR_ERR(hdmi->grf_clk) == -EPROBE_DEFER) {
  return -EPROBE_DEFER;
 } else if (IS_ERR(hdmi->grf_clk)) {
  DRM_DEV_ERROR(hdmi->dev, "failed to get grf clock\n");
  return PTR_ERR(hdmi->grf_clk);
 }

 return 0;
}
