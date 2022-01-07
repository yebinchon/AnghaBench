
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sdma_txreq {size_t num_desc; struct sdma_desc* descp; } ;
struct sdma_desc {int* qw; } ;
typedef scalar_t__ dma_addr_t ;


 int SDMA_DESC0_BYTE_COUNT_MASK ;
 int SDMA_DESC0_BYTE_COUNT_SHIFT ;
 int SDMA_DESC0_PHY_ADDR_MASK ;
 int SDMA_DESC0_PHY_ADDR_SHIFT ;
 int SDMA_DESC1_GENERATION_MASK ;
 int SDMA_DESC1_GENERATION_SHIFT ;

__attribute__((used)) static inline void make_tx_sdma_desc(
 struct sdma_txreq *tx,
 int type,
 dma_addr_t addr,
 size_t len)
{
 struct sdma_desc *desc = &tx->descp[tx->num_desc];

 if (!tx->num_desc) {

  desc->qw[1] |= ((u64)type & SDMA_DESC1_GENERATION_MASK)
    << SDMA_DESC1_GENERATION_SHIFT;
 } else {
  desc->qw[0] = 0;
  desc->qw[1] = ((u64)type & SDMA_DESC1_GENERATION_MASK)
    << SDMA_DESC1_GENERATION_SHIFT;
 }
 desc->qw[0] |= (((u64)addr & SDMA_DESC0_PHY_ADDR_MASK)
    << SDMA_DESC0_PHY_ADDR_SHIFT) |
   (((u64)len & SDMA_DESC0_BYTE_COUNT_MASK)
    << SDMA_DESC0_BYTE_COUNT_SHIFT);
}
