
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int * clk; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int * mtk_hdmi_clk_names ;
 int of_clk_get_by_name (struct device_node*,int ) ;

__attribute__((used)) static int mtk_hdmi_get_all_clk(struct mtk_hdmi *hdmi,
    struct device_node *np)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mtk_hdmi_clk_names); i++) {
  hdmi->clk[i] = of_clk_get_by_name(np,
        mtk_hdmi_clk_names[i]);
  if (IS_ERR(hdmi->clk[i]))
   return PTR_ERR(hdmi->clk[i]);
 }
 return 0;
}
