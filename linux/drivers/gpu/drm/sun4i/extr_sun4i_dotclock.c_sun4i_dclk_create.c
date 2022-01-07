
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_tcon {int dclk; int regs; int sclk0; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct sun4i_dclk {TYPE_1__ hw; int regmap; struct sun4i_tcon* tcon; } ;
struct device {int of_node; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; int flags; int * ops; } ;


 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 char* __clk_get_name (int ) ;
 int clk_register (struct device*,TYPE_1__*) ;
 struct sun4i_dclk* devm_kzalloc (struct device*,int,int ) ;
 int of_property_read_string_index (int ,char*,int ,char const**) ;
 int sun4i_dclk_ops ;

int sun4i_dclk_create(struct device *dev, struct sun4i_tcon *tcon)
{
 const char *clk_name, *parent_name;
 struct clk_init_data init;
 struct sun4i_dclk *dclk;
 int ret;

 parent_name = __clk_get_name(tcon->sclk0);
 ret = of_property_read_string_index(dev->of_node,
         "clock-output-names", 0,
         &clk_name);
 if (ret)
  return ret;

 dclk = devm_kzalloc(dev, sizeof(*dclk), GFP_KERNEL);
 if (!dclk)
  return -ENOMEM;
 dclk->tcon = tcon;

 init.name = clk_name;
 init.ops = &sun4i_dclk_ops;
 init.parent_names = &parent_name;
 init.num_parents = 1;
 init.flags = CLK_SET_RATE_PARENT;

 dclk->regmap = tcon->regs;
 dclk->hw.init = &init;

 tcon->dclk = clk_register(dev, &dclk->hw);
 if (IS_ERR(tcon->dclk))
  return PTR_ERR(tcon->dclk);

 return 0;
}
