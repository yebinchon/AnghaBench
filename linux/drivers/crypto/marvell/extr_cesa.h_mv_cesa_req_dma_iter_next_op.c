
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_dma_iter {int offset; int op_len; int len; } ;


 int CESA_SA_SRAM_PAYLOAD_SIZE ;
 int min (int,int ) ;

__attribute__((used)) static inline bool mv_cesa_req_dma_iter_next_op(struct mv_cesa_dma_iter *iter)
{
 iter->offset += iter->op_len;
 iter->op_len = min(iter->len - iter->offset,
      CESA_SA_SRAM_PAYLOAD_SIZE);

 return iter->op_len;
}
