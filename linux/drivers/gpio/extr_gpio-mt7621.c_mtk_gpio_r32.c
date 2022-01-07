
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gpio_chip {scalar_t__ (* read_reg ) (scalar_t__) ;} ;
struct mtk_gc {int bank; struct gpio_chip chip; } ;
struct mtk {scalar_t__ base; } ;


 int GPIO_BANK_STRIDE ;
 struct mtk* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ stub1 (scalar_t__) ;

__attribute__((used)) static inline u32
mtk_gpio_r32(struct mtk_gc *rg, u32 offset)
{
 struct gpio_chip *gc = &rg->chip;
 struct mtk *mtk = gpiochip_get_data(gc);

 offset = (rg->bank * GPIO_BANK_STRIDE) + offset;
 return gc->read_reg(mtk->base + offset);
}
