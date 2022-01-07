
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mcde {scalar_t__ regs; scalar_t__ stride; } ;


 scalar_t__ MCDE_EXTSRCXA0 ;
 scalar_t__ MCDE_EXTSRCXA1 ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mcde_set_extsrc(struct mcde *mcde, u32 buffer_address)
{

 writel(buffer_address, mcde->regs + MCDE_EXTSRCXA0);




 writel(buffer_address + mcde->stride, mcde->regs + MCDE_EXTSRCXA1);
}
