
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vtg {scalar_t__ regs; } ;


 scalar_t__ VTG_DRST_AUTOC ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vtg_reset(struct sti_vtg *vtg)
{
 writel(1, vtg->regs + VTG_DRST_AUTOC);
}
