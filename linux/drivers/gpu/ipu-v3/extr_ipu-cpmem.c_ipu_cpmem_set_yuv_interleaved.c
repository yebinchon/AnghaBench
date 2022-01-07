
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int dummy; } ;


 int IPU_FIELD_BPP ;
 int IPU_FIELD_NPB ;
 int IPU_FIELD_PFS ;


 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;

void ipu_cpmem_set_yuv_interleaved(struct ipuv3_channel *ch, u32 pixel_format)
{
 switch (pixel_format) {
 case 129:
  ipu_ch_param_write_field(ch, IPU_FIELD_BPP, 3);
  ipu_ch_param_write_field(ch, IPU_FIELD_PFS, 0xA);
  ipu_ch_param_write_field(ch, IPU_FIELD_NPB, 31);
  break;
 case 128:
  ipu_ch_param_write_field(ch, IPU_FIELD_BPP, 3);
  ipu_ch_param_write_field(ch, IPU_FIELD_PFS, 0x8);
  ipu_ch_param_write_field(ch, IPU_FIELD_NPB, 31);
  break;
 }
}
