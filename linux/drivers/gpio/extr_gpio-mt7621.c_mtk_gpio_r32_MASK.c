#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct gpio_chip {scalar_t__ (* read_reg ) (scalar_t__) ;} ;
struct mtk_gc {int bank; struct gpio_chip chip; } ;
struct mtk {scalar_t__ base; } ;

/* Variables and functions */
 int GPIO_BANK_STRIDE ; 
 struct mtk* FUNC0 (struct gpio_chip*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline u32
FUNC2(struct mtk_gc *rg, u32 offset)
{
	struct gpio_chip *gc = &rg->chip;
	struct mtk *mtk = FUNC0(gc);

	offset = (rg->bank * GPIO_BANK_STRIDE) + offset;
	return gc->read_reg(mtk->base + offset);
}