
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_tdma_desc {int dummy; } ;
struct mv_cesa_tdma_chain {int dummy; } ;
typedef int gfp_t ;


 int PTR_ERR_OR_ZERO (struct mv_cesa_tdma_desc*) ;
 struct mv_cesa_tdma_desc* mv_cesa_dma_add_desc (struct mv_cesa_tdma_chain*,int ) ;

int mv_cesa_dma_add_dummy_launch(struct mv_cesa_tdma_chain *chain, gfp_t flags)
{
 struct mv_cesa_tdma_desc *tdma;

 tdma = mv_cesa_dma_add_desc(chain, flags);
 return PTR_ERR_OR_ZERO(tdma);
}
