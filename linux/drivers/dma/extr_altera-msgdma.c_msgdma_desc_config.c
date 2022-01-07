
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msgdma_extended_desc {size_t len; int control; scalar_t__ burst_seq_num; int stride; void* write_addr_hi; void* read_addr_hi; void* write_addr_lo; void* read_addr_lo; } ;
typedef int dma_addr_t ;


 int MSGDMA_DESC_CTL_END_ON_LEN ;
 int MSGDMA_DESC_CTL_GO ;
 int MSGDMA_DESC_CTL_TR_ERR_IRQ ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void msgdma_desc_config(struct msgdma_extended_desc *desc,
          dma_addr_t dst, dma_addr_t src, size_t len,
          u32 stride)
{

 desc->read_addr_lo = lower_32_bits(src);
 desc->write_addr_lo = lower_32_bits(dst);


 desc->read_addr_hi = upper_32_bits(src);
 desc->write_addr_hi = upper_32_bits(dst);

 desc->len = len;
 desc->stride = stride;
 desc->burst_seq_num = 0;





 desc->control = MSGDMA_DESC_CTL_TR_ERR_IRQ | MSGDMA_DESC_CTL_GO |
  MSGDMA_DESC_CTL_END_ON_LEN;
}
