
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ op_offset; } ;
struct TYPE_3__ {scalar_t__ op_offset; } ;
struct mv_cesa_skcipher_dma_iter {int base; TYPE_2__ dst; TYPE_1__ src; } ;


 int mv_cesa_req_dma_iter_next_op (int *) ;

__attribute__((used)) static inline bool
mv_cesa_skcipher_req_iter_next_op(struct mv_cesa_skcipher_dma_iter *iter)
{
 iter->src.op_offset = 0;
 iter->dst.op_offset = 0;

 return mv_cesa_req_dma_iter_next_op(&iter->base);
}
