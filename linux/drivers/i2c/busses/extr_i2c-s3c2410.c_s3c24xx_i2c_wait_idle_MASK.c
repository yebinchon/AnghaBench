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
struct s3c24xx_i2c {int /*<<< orphan*/  dev; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int S3C2410_IDLE_TIMEOUT ; 
 scalar_t__ S3C2410_IICSTAT ; 
 unsigned long S3C2410_IICSTAT_START ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int) ; 

__attribute__((used)) static void FUNC7(struct s3c24xx_i2c *i2c)
{
	unsigned long iicstat;
	ktime_t start, now;
	unsigned long delay;
	int spins;

	/* ensure the stop has been through the bus */

	FUNC1(i2c->dev, "waiting for bus idle\n");

	start = now = FUNC3();

	/*
	 * Most of the time, the bus is already idle within a few usec of the
	 * end of a transaction.  However, really slow i2c devices can stretch
	 * the clock, delaying STOP generation.
	 *
	 * On slower SoCs this typically happens within a very small number of
	 * instructions so busy wait briefly to avoid scheduling overhead.
	 */
	spins = 3;
	iicstat = FUNC5(i2c->regs + S3C2410_IICSTAT);
	while ((iicstat & S3C2410_IICSTAT_START) && --spins) {
		FUNC0();
		iicstat = FUNC5(i2c->regs + S3C2410_IICSTAT);
	}

	/*
	 * If we do get an appreciable delay as a compromise between idle
	 * detection latency for the normal, fast case, and system load in the
	 * slow device case, use an exponential back off in the polling loop,
	 * up to 1/10th of the total timeout, then continue to poll at a
	 * constant rate up to the timeout.
	 */
	delay = 1;
	while ((iicstat & S3C2410_IICSTAT_START) &&
	       FUNC4(now, start) < S3C2410_IDLE_TIMEOUT) {
		FUNC6(delay, 2 * delay);
		if (delay < S3C2410_IDLE_TIMEOUT / 10)
			delay <<= 1;
		now = FUNC3();
		iicstat = FUNC5(i2c->regs + S3C2410_IICSTAT);
	}

	if (iicstat & S3C2410_IICSTAT_START)
		FUNC2(i2c->dev, "timeout waiting for bus idle\n");
}