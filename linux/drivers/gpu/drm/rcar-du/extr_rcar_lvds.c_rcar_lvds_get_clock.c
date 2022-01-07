
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_lvds {int dev; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 int EPROBE_DEFER ;
 int IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (int ,char*,char const*) ;
 struct clk* devm_clk_get (int ,char const*) ;

__attribute__((used)) static struct clk *rcar_lvds_get_clock(struct rcar_lvds *lvds, const char *name,
           bool optional)
{
 struct clk *clk;

 clk = devm_clk_get(lvds->dev, name);
 if (!IS_ERR(clk))
  return clk;

 if (PTR_ERR(clk) == -ENOENT && optional)
  return ((void*)0);

 if (PTR_ERR(clk) != -EPROBE_DEFER)
  dev_err(lvds->dev, "failed to get %s clock\n",
   name ? name : "module");

 return clk;
}
