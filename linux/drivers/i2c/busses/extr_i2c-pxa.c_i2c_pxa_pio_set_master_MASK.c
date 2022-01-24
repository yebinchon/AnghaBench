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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct pxa_i2c {TYPE_1__ adap; } ;

/* Variables and functions */
 int DEF_TIMEOUT ; 
 int I2C_RETRY ; 
 int ICR_SCLE ; 
 int ISR_IBB ; 
 int ISR_UB ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pxa_i2c *i2c)
{
	/* make timeout the same as for interrupt based functions */
	long timeout = 2 * DEF_TIMEOUT;

	/*
	 * Wait for the bus to become free.
	 */
	while (timeout-- && FUNC3(FUNC1(i2c)) & (ISR_IBB | ISR_UB)) {
		FUNC5(1000);
		FUNC4(i2c);
	}

	if (timeout < 0) {
		FUNC4(i2c);
		FUNC2(&i2c->adap.dev,
			"i2c_pxa: timeout waiting for bus free\n");
		return I2C_RETRY;
	}

	/*
	 * Set master mode.
	 */
	FUNC6(FUNC3(FUNC0(i2c)) | ICR_SCLE, FUNC0(i2c));

	return 0;
}