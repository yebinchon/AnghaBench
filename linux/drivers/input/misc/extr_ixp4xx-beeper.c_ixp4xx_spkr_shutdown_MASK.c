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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixp4xx_timer2_irq ; 
 struct input_dev* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static void FUNC4(struct platform_device *dev)
{
	struct input_dev *input_dev = FUNC3(dev);
	unsigned int pin = (unsigned int) FUNC1(input_dev);

	/* turn off the speaker */
	FUNC0(ixp4xx_timer2_irq);
	FUNC2(pin, 0);
}