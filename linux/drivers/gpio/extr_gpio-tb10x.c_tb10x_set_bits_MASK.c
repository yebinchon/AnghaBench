#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  bgpio_lock; } ;
struct tb10x_gpio {TYPE_1__ gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct tb10x_gpio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tb10x_gpio*,unsigned int,int) ; 

__attribute__((used)) static inline void FUNC4(struct tb10x_gpio *gpio, unsigned int offs,
				u32 mask, u32 val)
{
	u32 r;
	unsigned long flags;

	FUNC0(&gpio->gc.bgpio_lock, flags);

	r = FUNC2(gpio, offs);
	r = (r & ~mask) | (val & mask);

	FUNC3(gpio, offs, r);

	FUNC1(&gpio->gc.bgpio_lock, flags);
}