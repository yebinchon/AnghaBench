
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_tdma_desc {int byte_cnt; } ;
struct mv_cesa_tdma_chain {int dummy; } ;
typedef int gfp_t ;


 int BIT (int) ;
 scalar_t__ IS_ERR (struct mv_cesa_tdma_desc*) ;
 int PTR_ERR (struct mv_cesa_tdma_desc*) ;
 int cpu_to_le32 (int ) ;
 struct mv_cesa_tdma_desc* mv_cesa_dma_add_desc (struct mv_cesa_tdma_chain*,int ) ;

int mv_cesa_dma_add_dummy_end(struct mv_cesa_tdma_chain *chain, gfp_t flags)
{
 struct mv_cesa_tdma_desc *tdma;

 tdma = mv_cesa_dma_add_desc(chain, flags);
 if (IS_ERR(tdma))
  return PTR_ERR(tdma);

 tdma->byte_cnt = cpu_to_le32(BIT(31));

 return 0;
}
