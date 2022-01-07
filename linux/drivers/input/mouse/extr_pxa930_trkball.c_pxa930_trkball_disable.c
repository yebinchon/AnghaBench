
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa930_trkball {scalar_t__ mmio_base; } ;


 scalar_t__ TBCR ;
 int TBCR_TBRST ;
 int __raw_readl (scalar_t__) ;
 int write_tbcr (struct pxa930_trkball*,int) ;

__attribute__((used)) static void pxa930_trkball_disable(struct pxa930_trkball *trkball)
{
 uint32_t tbcr = __raw_readl(trkball->mmio_base + TBCR);


 write_tbcr(trkball, tbcr | TBCR_TBRST);
}
