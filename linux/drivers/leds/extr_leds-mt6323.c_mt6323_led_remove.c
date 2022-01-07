
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mt6323_leds {int lock; TYPE_2__* hw; TYPE_1__** led; } ;
struct TYPE_4__ {int regmap; } ;
struct TYPE_3__ {int cdev; } ;


 int MT6323_RG_DRV_32K_CK_PDN ;
 int MT6323_RG_DRV_32K_CK_PDN_MASK ;
 int MT6323_TOP_CKPDN0 ;
 int mt6323_led_hw_off (int *) ;
 int mutex_destroy (int *) ;
 struct mt6323_leds* platform_get_drvdata (struct platform_device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int mt6323_led_remove(struct platform_device *pdev)
{
 struct mt6323_leds *leds = platform_get_drvdata(pdev);
 int i;


 for (i = 0 ; leds->led[i] ; i++)
  mt6323_led_hw_off(&leds->led[i]->cdev);

 regmap_update_bits(leds->hw->regmap, MT6323_TOP_CKPDN0,
      MT6323_RG_DRV_32K_CK_PDN_MASK,
      MT6323_RG_DRV_32K_CK_PDN);

 mutex_destroy(&leds->lock);

 return 0;
}
