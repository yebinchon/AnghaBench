
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_sg_dma_iter {scalar_t__ op_offset; scalar_t__ offset; scalar_t__ sg; } ;
struct mv_cesa_dma_iter {scalar_t__ op_len; } ;


 scalar_t__ sg_dma_len (scalar_t__) ;
 scalar_t__ sg_is_last (scalar_t__) ;
 scalar_t__ sg_next (scalar_t__) ;

bool mv_cesa_req_dma_iter_next_transfer(struct mv_cesa_dma_iter *iter,
     struct mv_cesa_sg_dma_iter *sgiter,
     unsigned int len)
{
 if (!sgiter->sg)
  return 0;

 sgiter->op_offset += len;
 sgiter->offset += len;
 if (sgiter->offset == sg_dma_len(sgiter->sg)) {
  if (sg_is_last(sgiter->sg))
   return 0;
  sgiter->offset = 0;
  sgiter->sg = sg_next(sgiter->sg);
 }

 if (sgiter->op_offset == iter->op_len)
  return 0;

 return 1;
}
