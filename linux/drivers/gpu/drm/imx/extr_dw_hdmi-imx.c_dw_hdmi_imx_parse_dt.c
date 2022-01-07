
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_hdmi {int regmap; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int dw_hdmi_imx_parse_dt(struct imx_hdmi *hdmi)
{
 struct device_node *np = hdmi->dev->of_node;

 hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "gpr");
 if (IS_ERR(hdmi->regmap)) {
  dev_err(hdmi->dev, "Unable to get gpr\n");
  return PTR_ERR(hdmi->regmap);
 }

 return 0;
}
