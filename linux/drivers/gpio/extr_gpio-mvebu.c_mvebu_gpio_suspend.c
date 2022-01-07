
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mvebu_gpio_chip {int soc_variant; int * level_mask_regs; int regs; int * edge_mask_regs; scalar_t__ offset; int in_pol_reg; int blink_en_reg; int io_conf_reg; int out_reg; } ;
typedef int pm_message_t ;


 int BUG () ;
 int CONFIG_PWM ;
 scalar_t__ GPIO_BLINK_EN_OFF ;
 scalar_t__ GPIO_EDGE_MASK_ARMADAXP_OFF (int) ;
 scalar_t__ GPIO_EDGE_MASK_MV78200_OFF (int) ;
 scalar_t__ GPIO_EDGE_MASK_OFF ;
 scalar_t__ GPIO_IN_POL_OFF ;
 scalar_t__ GPIO_IO_CONF_OFF ;
 scalar_t__ GPIO_LEVEL_MASK_ARMADAXP_OFF (int) ;
 scalar_t__ GPIO_LEVEL_MASK_MV78200_OFF (int) ;
 scalar_t__ GPIO_LEVEL_MASK_OFF ;
 scalar_t__ GPIO_OUT_OFF ;
 scalar_t__ IS_ENABLED (int ) ;




 int mvebu_pwm_suspend (struct mvebu_gpio_chip*) ;
 struct mvebu_gpio_chip* platform_get_drvdata (struct platform_device*) ;
 int regmap_read (int ,scalar_t__,int *) ;

__attribute__((used)) static int mvebu_gpio_suspend(struct platform_device *pdev, pm_message_t state)
{
 struct mvebu_gpio_chip *mvchip = platform_get_drvdata(pdev);
 int i;

 regmap_read(mvchip->regs, GPIO_OUT_OFF + mvchip->offset,
      &mvchip->out_reg);
 regmap_read(mvchip->regs, GPIO_IO_CONF_OFF + mvchip->offset,
      &mvchip->io_conf_reg);
 regmap_read(mvchip->regs, GPIO_BLINK_EN_OFF + mvchip->offset,
      &mvchip->blink_en_reg);
 regmap_read(mvchip->regs, GPIO_IN_POL_OFF + mvchip->offset,
      &mvchip->in_pol_reg);

 switch (mvchip->soc_variant) {
 case 128:
 case 131:
  regmap_read(mvchip->regs, GPIO_EDGE_MASK_OFF + mvchip->offset,
       &mvchip->edge_mask_regs[0]);
  regmap_read(mvchip->regs, GPIO_LEVEL_MASK_OFF + mvchip->offset,
       &mvchip->level_mask_regs[0]);
  break;
 case 129:
  for (i = 0; i < 2; i++) {
   regmap_read(mvchip->regs,
        GPIO_EDGE_MASK_MV78200_OFF(i),
        &mvchip->edge_mask_regs[i]);
   regmap_read(mvchip->regs,
        GPIO_LEVEL_MASK_MV78200_OFF(i),
        &mvchip->level_mask_regs[i]);
  }
  break;
 case 130:
  for (i = 0; i < 4; i++) {
   regmap_read(mvchip->regs,
        GPIO_EDGE_MASK_ARMADAXP_OFF(i),
        &mvchip->edge_mask_regs[i]);
   regmap_read(mvchip->regs,
        GPIO_LEVEL_MASK_ARMADAXP_OFF(i),
        &mvchip->level_mask_regs[i]);
  }
  break;
 default:
  BUG();
 }

 if (IS_ENABLED(CONFIG_PWM))
  mvebu_pwm_suspend(mvchip);

 return 0;
}
