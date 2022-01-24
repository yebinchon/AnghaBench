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
struct amd_gpio {TYPE_1__* pdev; scalar_t__ pm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AMD_GPIO_RTIN ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 struct amd_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct amd_gpio *agp = FUNC2(chip);
	u8 temp;

	temp = FUNC3(agp->pm + FUNC0(offset));

	FUNC1(&agp->pdev->dev, "Getting gpio %d, reg=%02x\n", offset, temp);

	return (temp & AMD_GPIO_RTIN) ? 1 : 0;
}