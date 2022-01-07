
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pl08x_driver_data {TYPE_1__* vd; } ;
struct TYPE_2__ {scalar_t__ ftdmac020; } ;


 int BUG () ;
 int FTDMAC020_LLI_DST_WIDTH_MSK ;
 int FTDMAC020_LLI_DST_WIDTH_SHIFT ;
 int FTDMAC020_LLI_SRC_WIDTH_MSK ;
 int FTDMAC020_LLI_SRC_WIDTH_SHIFT ;
 int PL080_CONTROL_DWIDTH_MASK ;
 int PL080_CONTROL_DWIDTH_SHIFT ;
 int PL080_CONTROL_SWIDTH_MASK ;
 int PL080_CONTROL_SWIDTH_SHIFT ;




__attribute__((used)) static inline unsigned int
pl08x_get_bytes_for_lli(struct pl08x_driver_data *pl08x,
   u32 cctl,
   bool source)
{
 u32 val;

 if (pl08x->vd->ftdmac020) {
  if (source)
   val = (cctl & FTDMAC020_LLI_SRC_WIDTH_MSK) >>
    FTDMAC020_LLI_SRC_WIDTH_SHIFT;
  else
   val = (cctl & FTDMAC020_LLI_DST_WIDTH_MSK) >>
    FTDMAC020_LLI_DST_WIDTH_SHIFT;
 } else {
  if (source)
   val = (cctl & PL080_CONTROL_SWIDTH_MASK) >>
    PL080_CONTROL_SWIDTH_SHIFT;
  else
   val = (cctl & PL080_CONTROL_DWIDTH_MASK) >>
    PL080_CONTROL_DWIDTH_SHIFT;
 }

 switch (val) {
 case 128:
  return 1;
 case 130:
  return 2;
 case 129:
  return 4;
 default:
  break;
 }
 BUG();
 return 0;
}
