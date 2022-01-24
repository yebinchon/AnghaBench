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
struct highlander_i2c_dev {int /*<<< orphan*/  cmd_complete; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct highlander_i2c_dev*) ; 
 int FUNC1 (struct highlander_i2c_dev*) ; 
 int /*<<< orphan*/  iic_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct highlander_i2c_dev *dev)
{
	if (dev->irq)
		FUNC3(&dev->cmd_complete,
					  FUNC2(iic_timeout));
	else
		/* busy looping, the IRQ of champions */
		FUNC0(dev);

	return FUNC1(dev);
}