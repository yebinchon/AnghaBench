
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int dummy; } ;


 int IPU_FIELD_RDRW ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;

void ipu_cpmem_skip_odd_chroma_rows(struct ipuv3_channel *ch)
{
 ipu_ch_param_write_field(ch, IPU_FIELD_RDRW, 1);
}
