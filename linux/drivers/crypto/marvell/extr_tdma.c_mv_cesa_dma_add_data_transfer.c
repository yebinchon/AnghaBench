
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_cesa_tdma_desc {int flags; void* dst; void* src; int byte_cnt; } ;
struct mv_cesa_tdma_chain {int dummy; } ;
typedef int gfp_t ;
typedef void* dma_addr_t ;


 int BIT (int) ;
 int CESA_TDMA_DATA ;
 int CESA_TDMA_DST_IN_SRAM ;
 int CESA_TDMA_SRC_IN_SRAM ;
 scalar_t__ IS_ERR (struct mv_cesa_tdma_desc*) ;
 int PTR_ERR (struct mv_cesa_tdma_desc*) ;
 int cpu_to_le32 (int) ;
 struct mv_cesa_tdma_desc* mv_cesa_dma_add_desc (struct mv_cesa_tdma_chain*,int ) ;

int mv_cesa_dma_add_data_transfer(struct mv_cesa_tdma_chain *chain,
      dma_addr_t dst, dma_addr_t src, u32 size,
      u32 flags, gfp_t gfp_flags)
{
 struct mv_cesa_tdma_desc *tdma;

 tdma = mv_cesa_dma_add_desc(chain, gfp_flags);
 if (IS_ERR(tdma))
  return PTR_ERR(tdma);

 tdma->byte_cnt = cpu_to_le32(size | BIT(31));
 tdma->src = src;
 tdma->dst = dst;

 flags &= (CESA_TDMA_DST_IN_SRAM | CESA_TDMA_SRC_IN_SRAM);
 tdma->flags = flags | CESA_TDMA_DATA;

 return 0;
}
