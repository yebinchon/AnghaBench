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
typedef  unsigned long u8 ;
struct TYPE_2__ {scalar_t__ rx_buf; } ;
struct max3191x_chip {int /*<<< orphan*/  lock; TYPE_1__ xfer; } ;
struct gpio_chip {int ngpio; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int EIO ; 
 int MAX3191X_NGPIO ; 
 int FUNC0 (unsigned long*,int,int) ; 
 struct max3191x_chip* FUNC1 (struct gpio_chip*) ; 
 scalar_t__ FUNC2 (struct max3191x_chip*,unsigned int) ; 
 int FUNC3 (struct max3191x_chip*) ; 
 int FUNC4 (struct max3191x_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *gpio, unsigned long *mask,
				 unsigned long *bits)
{
	struct max3191x_chip *max3191x = FUNC1(gpio);
	int ret, bit = 0, wordlen = FUNC4(max3191x);

	FUNC5(&max3191x->lock);
	ret = FUNC3(max3191x);
	if (ret)
		goto out_unlock;

	while ((bit = FUNC0(mask, gpio->ngpio, bit)) != gpio->ngpio) {
		unsigned int chipnum = bit / MAX3191X_NGPIO;
		unsigned long in, shift, index;

		if (FUNC2(max3191x, chipnum)) {
			ret = -EIO;
			goto out_unlock;
		}

		in = ((u8 *)max3191x->xfer.rx_buf)[chipnum * wordlen];
		shift = FUNC7(bit % BITS_PER_LONG, MAX3191X_NGPIO);
		index = bit / BITS_PER_LONG;
		bits[index] &= ~(mask[index] & (0xff << shift));
		bits[index] |= mask[index] & (in << shift); /* copy bits */

		bit = (chipnum + 1) * MAX3191X_NGPIO; /* go to next chip */
	}

out_unlock:
	FUNC6(&max3191x->lock);
	return ret;
}