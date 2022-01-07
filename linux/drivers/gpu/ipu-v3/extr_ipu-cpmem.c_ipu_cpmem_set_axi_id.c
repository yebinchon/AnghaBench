
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int dummy; } ;


 int IPU_FIELD_ID ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;

void ipu_cpmem_set_axi_id(struct ipuv3_channel *ch, u32 id)
{
 id &= 0x3;
 ipu_ch_param_write_field(ch, IPU_FIELD_ID, id);
}
