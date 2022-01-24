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
struct platform_device {scalar_t__ id; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixp4xx_timer2_irq ; 
 struct input_dev* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct input_dev *input_dev = FUNC6(dev);
	unsigned int pin = (unsigned int) FUNC3(input_dev);

	FUNC4(input_dev);

	/* turn the speaker off */
	FUNC0(ixp4xx_timer2_irq);
	FUNC5(pin, 0);

	FUNC1(ixp4xx_timer2_irq, (void *)dev->id);
	FUNC2(dev->id);

	return 0;
}