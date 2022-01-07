
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int clk; int clk_out; } ;
struct clk {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_parent (int ,struct clk*) ;

__attribute__((used)) static int tegra_sor_set_parent_clock(struct tegra_sor *sor, struct clk *parent)
{
 int err;

 clk_disable_unprepare(sor->clk);

 err = clk_set_parent(sor->clk_out, parent);
 if (err < 0)
  return err;

 err = clk_prepare_enable(sor->clk);
 if (err < 0)
  return err;

 return 0;
}
