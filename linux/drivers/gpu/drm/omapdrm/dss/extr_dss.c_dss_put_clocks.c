
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {scalar_t__ parent_clk; } ;


 int clk_put (scalar_t__) ;

__attribute__((used)) static void dss_put_clocks(struct dss_device *dss)
{
 if (dss->parent_clk)
  clk_put(dss->parent_clk);
}
