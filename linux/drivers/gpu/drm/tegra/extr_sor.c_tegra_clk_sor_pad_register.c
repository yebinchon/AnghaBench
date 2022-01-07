
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_sor {int dev; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct tegra_clk_sor_pad {TYPE_1__ hw; struct tegra_sor* sor; } ;
struct clk_init_data {char const* name; int * ops; int num_parents; int parent_names; scalar_t__ flags; } ;
struct clk {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct clk* devm_clk_register (int ,TYPE_1__*) ;
 struct tegra_clk_sor_pad* devm_kzalloc (int ,int,int ) ;
 int tegra_clk_sor_pad_ops ;
 int tegra_clk_sor_pad_parents ;

__attribute__((used)) static struct clk *tegra_clk_sor_pad_register(struct tegra_sor *sor,
           const char *name)
{
 struct tegra_clk_sor_pad *pad;
 struct clk_init_data init;
 struct clk *clk;

 pad = devm_kzalloc(sor->dev, sizeof(*pad), GFP_KERNEL);
 if (!pad)
  return ERR_PTR(-ENOMEM);

 pad->sor = sor;

 init.name = name;
 init.flags = 0;
 init.parent_names = tegra_clk_sor_pad_parents;
 init.num_parents = ARRAY_SIZE(tegra_clk_sor_pad_parents);
 init.ops = &tegra_clk_sor_pad_ops;

 pad->hw.init = &init;

 clk = devm_clk_register(sor->dev, &pad->hw);

 return clk;
}
