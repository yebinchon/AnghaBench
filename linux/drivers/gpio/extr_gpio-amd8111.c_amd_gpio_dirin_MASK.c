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
typedef  int u8 ;
struct gpio_chip {int dummy; } ;
struct amd_gpio {TYPE_1__* pdev; int /*<<< orphan*/  lock; scalar_t__ pm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AMD_GPIO_DEBOUNCE ; 
 int AMD_GPIO_MODE_IN ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 struct amd_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned offset)
{
	struct amd_gpio *agp = FUNC2(chip);
	u8 temp;
	unsigned long flags;

	FUNC5(&agp->lock, flags);
	temp = FUNC3(agp->pm + FUNC0(offset));
	temp = (temp & AMD_GPIO_DEBOUNCE) | AMD_GPIO_MODE_IN;
	FUNC4(temp, agp->pm + FUNC0(offset));
	FUNC6(&agp->lock, flags);

	FUNC1(&agp->pdev->dev, "Dirin gpio %d, reg=%02x\n", offset, temp);

	return 0;
}