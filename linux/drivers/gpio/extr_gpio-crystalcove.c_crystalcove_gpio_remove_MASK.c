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
struct platform_device {int dummy; } ;
struct crystalcove_gpio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct crystalcove_gpio*) ; 
 struct crystalcove_gpio* FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct crystalcove_gpio *cg = FUNC1(pdev);
	int irq = FUNC2(pdev, 0);

	if (irq >= 0)
		FUNC0(irq, cg);
	return 0;
}