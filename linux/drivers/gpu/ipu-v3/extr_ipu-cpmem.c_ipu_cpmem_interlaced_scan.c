
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int dummy; } ;


 int IPU_FIELD_ILO ;
 int IPU_FIELD_SLUV ;
 int IPU_FIELD_SLY ;
 int IPU_FIELD_SO ;





 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;

void ipu_cpmem_interlaced_scan(struct ipuv3_channel *ch, int stride,
          u32 pixelformat)
{
 u32 ilo, sly, sluv;

 if (stride < 0) {
  stride = -stride;
  ilo = 0x100000 - (stride / 8);
 } else {
  ilo = stride / 8;
 }

 sly = (stride * 2) - 1;

 switch (pixelformat) {
 case 130:
 case 128:
  sluv = stride / 2 - 1;
  break;
 case 132:
  sluv = stride - 1;
  break;
 case 129:
  sluv = stride - 1;
  break;
 case 131:
  sluv = stride * 2 - 1;
  break;
 default:
  sluv = 0;
  break;
 }

 ipu_ch_param_write_field(ch, IPU_FIELD_SO, 1);
 ipu_ch_param_write_field(ch, IPU_FIELD_ILO, ilo);
 ipu_ch_param_write_field(ch, IPU_FIELD_SLY, sly);
 if (sluv)
  ipu_ch_param_write_field(ch, IPU_FIELD_SLUV, sluv);
}
