
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_sg_dma_iter {scalar_t__ offset; int sg; scalar_t__ op_offset; } ;
struct mv_cesa_dma_iter {scalar_t__ op_len; } ;


 unsigned int min (scalar_t__,scalar_t__) ;
 scalar_t__ sg_dma_len (int ) ;

__attribute__((used)) static inline unsigned int
mv_cesa_req_dma_iter_transfer_len(struct mv_cesa_dma_iter *iter,
      struct mv_cesa_sg_dma_iter *sgiter)
{
 return min(iter->op_len - sgiter->op_offset,
     sg_dma_len(sgiter->sg) - sgiter->offset);
}
