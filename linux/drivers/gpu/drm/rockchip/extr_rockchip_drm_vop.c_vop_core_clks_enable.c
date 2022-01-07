
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int hclk; int aclk; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;

__attribute__((used)) static int vop_core_clks_enable(struct vop *vop)
{
 int ret;

 ret = clk_enable(vop->hclk);
 if (ret < 0)
  return ret;

 ret = clk_enable(vop->aclk);
 if (ret < 0)
  goto err_disable_hclk;

 return 0;

err_disable_hclk:
 clk_disable(vop->hclk);
 return ret;
}
