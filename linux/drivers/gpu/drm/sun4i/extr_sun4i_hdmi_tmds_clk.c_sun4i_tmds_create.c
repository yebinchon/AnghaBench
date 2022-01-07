
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct clk_init_data* init; } ;
struct sun4i_tmds {TYPE_2__ hw; int div_offset; struct sun4i_hdmi* hdmi; } ;
struct sun4i_hdmi {int tmds_clk; int dev; TYPE_1__* variant; int pll1_clk; int pll0_clk; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int flags; int * ops; } ;
struct TYPE_3__ {int tmds_clk_div_offset; } ;


 int CLK_SET_RATE_PARENT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 char* __clk_get_name (int ) ;
 int devm_clk_register (int ,TYPE_2__*) ;
 struct sun4i_tmds* devm_kzalloc (int ,int,int ) ;
 int sun4i_tmds_ops ;

int sun4i_tmds_create(struct sun4i_hdmi *hdmi)
{
 struct clk_init_data init;
 struct sun4i_tmds *tmds;
 const char *parents[2];

 parents[0] = __clk_get_name(hdmi->pll0_clk);
 if (!parents[0])
  return -ENODEV;

 parents[1] = __clk_get_name(hdmi->pll1_clk);
 if (!parents[1])
  return -ENODEV;

 tmds = devm_kzalloc(hdmi->dev, sizeof(*tmds), GFP_KERNEL);
 if (!tmds)
  return -ENOMEM;

 init.name = "hdmi-tmds";
 init.ops = &sun4i_tmds_ops;
 init.parent_names = parents;
 init.num_parents = 2;
 init.flags = CLK_SET_RATE_PARENT;

 tmds->hdmi = hdmi;
 tmds->hw.init = &init;
 tmds->div_offset = hdmi->variant->tmds_clk_div_offset;

 hdmi->tmds_clk = devm_clk_register(hdmi->dev, &tmds->hw);
 if (IS_ERR(hdmi->tmds_clk))
  return PTR_ERR(hdmi->tmds_clk);

 return 0;
}
