
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct clk_init_data* init; } ;
struct sun8i_phy_clk {TYPE_1__ hw; struct sun8i_hdmi_phy* phy; } ;
struct sun8i_hdmi_phy {int clk_phy; int clk_pll1; int clk_pll0; } ;
struct device {int dummy; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int flags; int * ops; } ;


 int CLK_SET_RATE_PARENT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 char* __clk_get_name (int ) ;
 int devm_clk_register (struct device*,TYPE_1__*) ;
 struct sun8i_phy_clk* devm_kzalloc (struct device*,int,int ) ;
 int sun8i_phy_clk_ops ;

int sun8i_phy_clk_create(struct sun8i_hdmi_phy *phy, struct device *dev,
    bool second_parent)
{
 struct clk_init_data init;
 struct sun8i_phy_clk *priv;
 const char *parents[2];

 parents[0] = __clk_get_name(phy->clk_pll0);
 if (!parents[0])
  return -ENODEV;

 if (second_parent) {
  parents[1] = __clk_get_name(phy->clk_pll1);
  if (!parents[1])
   return -ENODEV;
 }

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 init.name = "hdmi-phy-clk";
 init.ops = &sun8i_phy_clk_ops;
 init.parent_names = parents;
 init.num_parents = second_parent ? 2 : 1;
 init.flags = CLK_SET_RATE_PARENT;

 priv->phy = phy;
 priv->hw.init = &init;

 phy->clk_phy = devm_clk_register(dev, &priv->hw);
 if (IS_ERR(phy->clk_phy))
  return PTR_ERR(phy->clk_phy);

 return 0;
}
