
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int dummy; } ;


 int EINVAL ;
 int IPU_FIELD_BPP ;
 int IPU_FIELD_NPB ;
 int IPU_FIELD_PFS ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;

int ipu_cpmem_set_format_passthrough(struct ipuv3_channel *ch, int width)
{
 int bpp = 0, npb = 0;

 switch (width) {
 case 32:
  bpp = 0;
  npb = 15;
  break;
 case 24:
  bpp = 1;
  npb = 19;
  break;
 case 16:
  bpp = 3;
  npb = 31;
  break;
 case 8:
  bpp = 5;
  npb = 63;
  break;
 default:
  return -EINVAL;
 }

 ipu_ch_param_write_field(ch, IPU_FIELD_BPP, bpp);
 ipu_ch_param_write_field(ch, IPU_FIELD_NPB, npb);
 ipu_ch_param_write_field(ch, IPU_FIELD_PFS, 6);

 return 0;
}
