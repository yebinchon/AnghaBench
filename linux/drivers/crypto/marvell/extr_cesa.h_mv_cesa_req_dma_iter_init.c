
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_dma_iter {unsigned int len; scalar_t__ offset; int op_len; } ;


 int CESA_SA_SRAM_PAYLOAD_SIZE ;
 int min (unsigned int,int ) ;

__attribute__((used)) static inline void mv_cesa_req_dma_iter_init(struct mv_cesa_dma_iter *iter,
          unsigned int len)
{
 iter->len = len;
 iter->op_len = min(len, CESA_SA_SRAM_PAYLOAD_SIZE);
 iter->offset = 0;
}
