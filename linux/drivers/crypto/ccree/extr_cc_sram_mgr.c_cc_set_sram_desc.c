
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct cc_hw_desc {int dummy; } ;
typedef scalar_t__ cc_sram_addr_t ;


 int BYPASS ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_din_const (struct cc_hw_desc*,unsigned int const,int) ;
 int set_dout_sram (struct cc_hw_desc*,scalar_t__,int) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;

void cc_set_sram_desc(const u32 *src, cc_sram_addr_t dst,
        unsigned int nelement, struct cc_hw_desc *seq,
        unsigned int *seq_len)
{
 u32 i;
 unsigned int idx = *seq_len;

 for (i = 0; i < nelement; i++, idx++) {
  hw_desc_init(&seq[idx]);
  set_din_const(&seq[idx], src[i], sizeof(u32));
  set_dout_sram(&seq[idx], dst + (i * sizeof(u32)), sizeof(u32));
  set_flow_mode(&seq[idx], BYPASS);
 }

 *seq_len = idx;
}
