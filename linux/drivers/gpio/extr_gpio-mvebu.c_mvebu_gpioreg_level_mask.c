
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct mvebu_gpio_chip {int soc_variant; unsigned int offset; struct regmap* percpu_regs; struct regmap* regs; } ;


 int BUG () ;
 unsigned int GPIO_LEVEL_MASK_ARMADAXP_OFF (int) ;
 unsigned int GPIO_LEVEL_MASK_MV78200_OFF (int) ;
 unsigned int GPIO_LEVEL_MASK_OFF ;




 int smp_processor_id () ;

__attribute__((used)) static void
mvebu_gpioreg_level_mask(struct mvebu_gpio_chip *mvchip,
    struct regmap **map, unsigned int *offset)
{
 int cpu;

 switch (mvchip->soc_variant) {
 case 128:
 case 131:
  *map = mvchip->regs;
  *offset = GPIO_LEVEL_MASK_OFF + mvchip->offset;
  break;
 case 129:
  cpu = smp_processor_id();
  *map = mvchip->regs;
  *offset = GPIO_LEVEL_MASK_MV78200_OFF(cpu);
  break;
 case 130:
  cpu = smp_processor_id();
  *map = mvchip->percpu_regs;
  *offset = GPIO_LEVEL_MASK_ARMADAXP_OFF(cpu);
  break;
 default:
  BUG();
 }
}
