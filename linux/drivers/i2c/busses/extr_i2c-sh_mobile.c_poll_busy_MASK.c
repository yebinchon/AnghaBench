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
typedef  int u_int8_t ;
struct sh_mobile_i2c_data {int sr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ICSR ; 
 int ICSR_AL ; 
 int ICSR_BUSY ; 
 int ICSR_TACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct sh_mobile_i2c_data *pd)
{
	int i;

	for (i = 1000; i; i--) {
		u_int8_t val = FUNC1(pd, ICSR);

		FUNC0(pd->dev, "val 0x%02x pd->sr 0x%02x\n", val, pd->sr);

		/* the interrupt handler may wake us up before the
		 * transfer is finished, so poll the hardware
		 * until we're done.
		 */
		if (!(val & ICSR_BUSY)) {
			/* handle missing acknowledge and arbitration lost */
			val |= pd->sr;
			if (val & ICSR_TACK)
				return -ENXIO;
			if (val & ICSR_AL)
				return -EAGAIN;
			break;
		}

		FUNC2(10);
	}

	return i ? 0 : -ETIMEDOUT;
}