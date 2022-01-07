
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int hclk; int aclk; } ;


 int clk_disable (int ) ;

__attribute__((used)) static void vop_core_clks_disable(struct vop *vop)
{
 clk_disable(vop->aclk);
 clk_disable(vop->hclk);
}
