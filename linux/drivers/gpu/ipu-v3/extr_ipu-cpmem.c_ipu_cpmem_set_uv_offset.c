
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int dummy; } ;


 int IPU_FIELD_UBO ;
 int IPU_FIELD_VBO ;
 int WARN_ON_ONCE (int) ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;

void ipu_cpmem_set_uv_offset(struct ipuv3_channel *ch, u32 u_off, u32 v_off)
{
 WARN_ON_ONCE((u_off & 0x7) || (v_off & 0x7));

 ipu_ch_param_write_field(ch, IPU_FIELD_UBO, u_off / 8);
 ipu_ch_param_write_field(ch, IPU_FIELD_VBO, v_off / 8);
}
