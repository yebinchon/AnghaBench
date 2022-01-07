
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpadc {int dev; int palmas; } ;


 int PALMAS_INT3_MASK ;
 int PALMAS_INT3_MASK_GPADC_EOC_SW ;
 int PALMAS_INTERRUPT_BASE ;
 int dev_err (int ,char*,int) ;
 int palmas_update_bits (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int palmas_gpadc_start_mask_interrupt(struct palmas_gpadc *adc,
      bool mask)
{
 int ret;

 if (!mask)
  ret = palmas_update_bits(adc->palmas, PALMAS_INTERRUPT_BASE,
     PALMAS_INT3_MASK,
     PALMAS_INT3_MASK_GPADC_EOC_SW, 0);
 else
  ret = palmas_update_bits(adc->palmas, PALMAS_INTERRUPT_BASE,
     PALMAS_INT3_MASK,
     PALMAS_INT3_MASK_GPADC_EOC_SW,
     PALMAS_INT3_MASK_GPADC_EOC_SW);
 if (ret < 0)
  dev_err(adc->dev, "GPADC INT MASK update failed: %d\n", ret);

 return ret;
}
