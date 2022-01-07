
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int dummy; } ;


 int IPU_FIELD_SLUV ;
 int IPU_FIELD_UBO ;
 int IPU_FIELD_VBO ;
 int WARN_ON_ONCE (int) ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,unsigned int) ;

void ipu_cpmem_set_yuv_planar_full(struct ipuv3_channel *ch,
       unsigned int uv_stride,
       unsigned int u_offset, unsigned int v_offset)
{
 WARN_ON_ONCE((u_offset & 0x7) || (v_offset & 0x7));

 ipu_ch_param_write_field(ch, IPU_FIELD_SLUV, uv_stride - 1);
 ipu_ch_param_write_field(ch, IPU_FIELD_UBO, u_offset / 8);
 ipu_ch_param_write_field(ch, IPU_FIELD_VBO, v_offset / 8);
}
