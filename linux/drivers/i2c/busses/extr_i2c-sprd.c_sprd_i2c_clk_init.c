
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct sprd_i2c {int src_clk; struct clk* clk; TYPE_1__ adap; int dev; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 scalar_t__ clk_set_parent (struct clk*,struct clk*) ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int ) ;
 int dev_warn (int ,char*,int ) ;
 void* devm_clk_get (int ,char*) ;

__attribute__((used)) static int sprd_i2c_clk_init(struct sprd_i2c *i2c_dev)
{
 struct clk *clk_i2c, *clk_parent;

 clk_i2c = devm_clk_get(i2c_dev->dev, "i2c");
 if (IS_ERR(clk_i2c)) {
  dev_warn(i2c_dev->dev, "i2c%d can't get the i2c clock\n",
    i2c_dev->adap.nr);
  clk_i2c = ((void*)0);
 }

 clk_parent = devm_clk_get(i2c_dev->dev, "source");
 if (IS_ERR(clk_parent)) {
  dev_warn(i2c_dev->dev, "i2c%d can't get the source clock\n",
    i2c_dev->adap.nr);
  clk_parent = ((void*)0);
 }

 if (clk_set_parent(clk_i2c, clk_parent))
  i2c_dev->src_clk = clk_get_rate(clk_i2c);
 else
  i2c_dev->src_clk = 26000000;

 dev_dbg(i2c_dev->dev, "i2c%d set source clock is %d\n",
  i2c_dev->adap.nr, i2c_dev->src_clk);

 i2c_dev->clk = devm_clk_get(i2c_dev->dev, "enable");
 if (IS_ERR(i2c_dev->clk)) {
  dev_err(i2c_dev->dev, "i2c%d can't get the enable clock\n",
   i2c_dev->adap.nr);
  return PTR_ERR(i2c_dev->clk);
 }

 return 0;
}
