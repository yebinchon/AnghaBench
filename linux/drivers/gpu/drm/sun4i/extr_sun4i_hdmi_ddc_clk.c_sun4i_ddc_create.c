
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sun4i_hdmi {int ddc_clk; int dev; TYPE_1__* variant; int regmap; } ;
struct TYPE_4__ {struct clk_init_data* init; } ;
struct sun4i_ddc {TYPE_2__ hw; int m_offset; int pre_div; struct sun4i_hdmi* hdmi; int reg; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int * ops; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int ddc_clk_m_offset; int ddc_clk_pre_divider; int ddc_clk_reg; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 char* __clk_get_name (struct clk*) ;
 int devm_clk_register (int ,TYPE_2__*) ;
 struct sun4i_ddc* devm_kzalloc (int ,int,int ) ;
 int devm_regmap_field_alloc (int ,int ,int ) ;
 int sun4i_ddc_ops ;

int sun4i_ddc_create(struct sun4i_hdmi *hdmi, struct clk *parent)
{
 struct clk_init_data init;
 struct sun4i_ddc *ddc;
 const char *parent_name;

 parent_name = __clk_get_name(parent);
 if (!parent_name)
  return -ENODEV;

 ddc = devm_kzalloc(hdmi->dev, sizeof(*ddc), GFP_KERNEL);
 if (!ddc)
  return -ENOMEM;

 ddc->reg = devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
        hdmi->variant->ddc_clk_reg);
 if (IS_ERR(ddc->reg))
  return PTR_ERR(ddc->reg);

 init.name = "hdmi-ddc";
 init.ops = &sun4i_ddc_ops;
 init.parent_names = &parent_name;
 init.num_parents = 1;

 ddc->hdmi = hdmi;
 ddc->hw.init = &init;
 ddc->pre_div = hdmi->variant->ddc_clk_pre_divider;
 ddc->m_offset = hdmi->variant->ddc_clk_m_offset;

 hdmi->ddc_clk = devm_clk_register(hdmi->dev, &ddc->hw);
 if (IS_ERR(hdmi->ddc_clk))
  return PTR_ERR(hdmi->ddc_clk);

 return 0;
}
