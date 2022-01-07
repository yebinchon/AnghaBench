
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct hisi_zip_sqe {void* dest_addr_h; void* dest_addr_l; void* source_addr_h; void* source_addr_l; void* dest_avail_out; int dw9; void* input_data_length; } ;
typedef int dma_addr_t ;


 int FIELD_PREP (int ,int ) ;
 int HZIP_REQ_TYPE_M ;
 void* lower_32_bits (int ) ;
 int memset (struct hisi_zip_sqe*,int ,int) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void hisi_zip_fill_sqe(struct hisi_zip_sqe *sqe, u8 req_type,
         dma_addr_t s_addr, dma_addr_t d_addr, u32 slen,
         u32 dlen)
{
 memset(sqe, 0, sizeof(struct hisi_zip_sqe));

 sqe->input_data_length = slen;
 sqe->dw9 = FIELD_PREP(HZIP_REQ_TYPE_M, req_type);
 sqe->dest_avail_out = dlen;
 sqe->source_addr_l = lower_32_bits(s_addr);
 sqe->source_addr_h = upper_32_bits(s_addr);
 sqe->dest_addr_l = lower_32_bits(d_addr);
 sqe->dest_addr_h = upper_32_bits(d_addr);
}
