
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct sun6i_vchan {TYPE_1__ vc; } ;
struct sun6i_dma_lli {int p_lli_next; int para; int len; int dst; int src; int cfg; } ;
typedef int phys_addr_t ;


 int chan2dev (int *) ;
 int dev_dbg (int ,char*,int *,struct sun6i_dma_lli*,int ,int ,int ,int ,int ,int ) ;
 int virt_to_phys (struct sun6i_dma_lli*) ;

__attribute__((used)) static inline void sun6i_dma_dump_lli(struct sun6i_vchan *vchan,
          struct sun6i_dma_lli *lli)
{
 phys_addr_t p_lli = virt_to_phys(lli);

 dev_dbg(chan2dev(&vchan->vc.chan),
  "\n\tdesc:   p - %pa v - 0x%p\n"
  "\t\tc - 0x%08x s - 0x%08x d - 0x%08x\n"
  "\t\tl - 0x%08x p - 0x%08x n - 0x%08x\n",
  &p_lli, lli,
  lli->cfg, lli->src, lli->dst,
  lli->len, lli->para, lli->p_lli_next);
}
