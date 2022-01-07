
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dsi {int clk_parent; TYPE_1__* slave; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 int EINVAL ;
 struct clk* clk_get_parent (int ) ;
 int clk_set_parent (struct clk*,int ) ;

__attribute__((used)) static int tegra_dsi_ganged_setup(struct tegra_dsi *dsi)
{
 struct clk *parent;
 int err;


 parent = clk_get_parent(dsi->slave->clk);
 if (!parent)
  return -EINVAL;

 err = clk_set_parent(parent, dsi->clk_parent);
 if (err < 0)
  return err;

 return 0;
}
