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
typedef  unsigned int u8 ;
struct TYPE_2__ {scalar_t__ rx_buf; } ;
struct max3191x_chip {int /*<<< orphan*/  lock; TYPE_1__ xfer; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int MAX3191X_NGPIO ; 
 struct max3191x_chip* FUNC0 (struct gpio_chip*) ; 
 scalar_t__ FUNC1 (struct max3191x_chip*,int) ; 
 int FUNC2 (struct max3191x_chip*) ; 
 int FUNC3 (struct max3191x_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gpio, unsigned int offset)
{
	struct max3191x_chip *max3191x = FUNC0(gpio);
	int ret, chipnum, wordlen = FUNC3(max3191x);
	u8 in;

	FUNC4(&max3191x->lock);
	ret = FUNC2(max3191x);
	if (ret)
		goto out_unlock;

	chipnum = offset / MAX3191X_NGPIO;
	if (FUNC1(max3191x, chipnum)) {
		ret = -EIO;
		goto out_unlock;
	}

	in = ((u8 *)max3191x->xfer.rx_buf)[chipnum * wordlen];
	ret = (in >> (offset % MAX3191X_NGPIO)) & 1;

out_unlock:
	FUNC5(&max3191x->lock);
	return ret;
}