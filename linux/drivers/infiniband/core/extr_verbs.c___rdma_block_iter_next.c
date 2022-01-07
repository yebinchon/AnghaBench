
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_block_iter {int __dma_addr; int __sg_advance; int __sg_nents; scalar_t__ __sg; int __pg_bit; } ;


 unsigned int BIT_ULL (int ) ;
 int sg_dma_address (scalar_t__) ;
 scalar_t__ sg_dma_len (scalar_t__) ;
 scalar_t__ sg_next (scalar_t__) ;

bool __rdma_block_iter_next(struct ib_block_iter *biter)
{
 unsigned int block_offset;

 if (!biter->__sg_nents || !biter->__sg)
  return 0;

 biter->__dma_addr = sg_dma_address(biter->__sg) + biter->__sg_advance;
 block_offset = biter->__dma_addr & (BIT_ULL(biter->__pg_bit) - 1);
 biter->__sg_advance += BIT_ULL(biter->__pg_bit) - block_offset;

 if (biter->__sg_advance >= sg_dma_len(biter->__sg)) {
  biter->__sg_advance = 0;
  biter->__sg = sg_next(biter->__sg);
  biter->__sg_nents--;
 }

 return 1;
}
