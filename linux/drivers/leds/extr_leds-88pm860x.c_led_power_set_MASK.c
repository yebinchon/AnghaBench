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
struct pm860x_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RGB1_ENABLE ; 
 int /*<<< orphan*/  RGB2_ENABLE ; 
 int FUNC0 (struct pm860x_chip*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pm860x_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pm860x_chip *chip, int port, int on)
{
	int ret = -EINVAL;

	switch (port) {
	case 0:
	case 1:
	case 2:
		ret = on ? FUNC1(chip, RGB1_ENABLE) :
			FUNC0(chip, RGB1_ENABLE);
		break;
	case 3:
	case 4:
	case 5:
		ret = on ? FUNC1(chip, RGB2_ENABLE) :
			FUNC0(chip, RGB2_ENABLE);
		break;
	}
	return ret;
}