
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int clk_disable_unprepare (struct clk*) ;
 int clk_put (struct clk*) ;

__attribute__((used)) static void thunder_i2c_clock_disable(struct device *dev, struct clk *clk)
{
 if (!clk)
  return;
 clk_disable_unprepare(clk);
 clk_put(clk);
}
