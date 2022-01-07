
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct at91_adc_state {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int AT91_SAMA5D2_MAX_POS_BITS ;
 int AT91_SAMA5D2_XYZ_MASK ;
 int at91_adc_readl (struct at91_adc_state*,int) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 TYPE_1__* iio_priv_to_dev (struct at91_adc_state*) ;

__attribute__((used)) static u16 at91_adc_touch_pos(struct at91_adc_state *st, int reg)
{
 u32 val;
 u32 scale, result, pos;







 val = at91_adc_readl(st, reg);
 if (!val)
  dev_dbg(&iio_priv_to_dev(st)->dev, "pos is 0\n");

 pos = val & AT91_SAMA5D2_XYZ_MASK;
 result = (pos << AT91_SAMA5D2_MAX_POS_BITS) - pos;
 scale = (val >> 16) & AT91_SAMA5D2_XYZ_MASK;
 if (scale == 0) {
  dev_err(&iio_priv_to_dev(st)->dev, "scale is 0\n");
  return 0;
 }
 result /= scale;

 return result;
}
