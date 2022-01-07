
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int dummy; } ;
typedef int dma_addr_t ;


 int IPU_FIELD_EBA0 ;
 int IPU_FIELD_EBA1 ;
 int WARN_ON_ONCE (int) ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;

void ipu_cpmem_set_buffer(struct ipuv3_channel *ch, int bufnum, dma_addr_t buf)
{
 WARN_ON_ONCE(buf & 0x7);

 if (bufnum)
  ipu_ch_param_write_field(ch, IPU_FIELD_EBA1, buf >> 3);
 else
  ipu_ch_param_write_field(ch, IPU_FIELD_EBA0, buf >> 3);
}
