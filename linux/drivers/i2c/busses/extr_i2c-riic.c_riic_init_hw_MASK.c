#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;
struct riic_dev {TYPE_1__ adapter; scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct i2c_timings {int bus_freq_hz; int scl_fall_ns; int scl_rise_ns; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int EINVAL ; 
 int ICBR_RESERVED ; 
 int /*<<< orphan*/  ICCR1_ICE ; 
 int ICCR1_IICRST ; 
 int ICCR1_SOWP ; 
 int FUNC1 (int) ; 
 int ICMR3_ACKWP ; 
 int ICMR3_RDRFS ; 
 scalar_t__ RIIC_ICBRH ; 
 scalar_t__ RIIC_ICBRL ; 
 scalar_t__ RIIC_ICCR1 ; 
 scalar_t__ RIIC_ICMR1 ; 
 scalar_t__ RIIC_ICMR3 ; 
 scalar_t__ RIIC_ICSER ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct riic_dev*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct riic_dev *riic, struct i2c_timings *t)
{
	int ret = 0;
	unsigned long rate;
	int total_ticks, cks, brl, brh;

	FUNC4(riic->adapter.dev.parent);

	if (t->bus_freq_hz > 400000) {
		FUNC3(&riic->adapter.dev,
			"unsupported bus speed (%dHz). 400000 max\n",
			t->bus_freq_hz);
		ret = -EINVAL;
		goto out;
	}

	rate = FUNC2(riic->clk);

	/*
	 * Assume the default register settings:
	 *  FER.SCLE = 1 (SCL sync circuit enabled, adds 2 or 3 cycles)
	 *  FER.NFE = 1 (noise circuit enabled)
	 *  MR3.NF = 0 (1 cycle of noise filtered out)
	 *
	 * Freq (CKS=000) = (I2CCLK + tr + tf)/ (BRH + 3 + 1) + (BRL + 3 + 1)
	 * Freq (CKS!=000) = (I2CCLK + tr + tf)/ (BRH + 2 + 1) + (BRL + 2 + 1)
	 */

	/*
	 * Determine reference clock rate. We must be able to get the desired
	 * frequency with only 62 clock ticks max (31 high, 31 low).
	 * Aim for a duty of 60% LOW, 40% HIGH.
	 */
	total_ticks = FUNC0(rate, t->bus_freq_hz);

	for (cks = 0; cks < 7; cks++) {
		/*
		 * 60% low time must be less than BRL + 2 + 1
		 * BRL max register value is 0x1F.
		 */
		brl = ((total_ticks * 6) / 10);
		if (brl <= (0x1F + 3))
			break;

		total_ticks /= 2;
		rate /= 2;
	}

	if (brl > (0x1F + 3)) {
		FUNC3(&riic->adapter.dev, "invalid speed (%lu). Too slow.\n",
			(unsigned long)t->bus_freq_hz);
		ret = -EINVAL;
		goto out;
	}

	brh = total_ticks - brl;

	/* Remove automatic clock ticks for sync circuit and NF */
	if (cks == 0) {
		brl -= 4;
		brh -= 4;
	} else {
		brl -= 3;
		brh -= 3;
	}

	/*
	 * Remove clock ticks for rise and fall times. Convert ns to clock
	 * ticks.
	 */
	brl -= t->scl_fall_ns / (1000000000 / rate);
	brh -= t->scl_rise_ns / (1000000000 / rate);

	/* Adjust for min register values for when SCLE=1 and NFE=1 */
	if (brl < 1)
		brl = 1;
	if (brh < 1)
		brh = 1;

	FUNC6("i2c-riic: freq=%lu, duty=%d, fall=%lu, rise=%lu, cks=%d, brl=%d, brh=%d\n",
		 rate / total_ticks, ((brl + 3) * 100) / (brl + brh + 6),
		 t->scl_fall_ns / (1000000000 / rate),
		 t->scl_rise_ns / (1000000000 / rate), cks, brl, brh);

	/* Changing the order of accessing IICRST and ICE may break things! */
	FUNC8(ICCR1_IICRST | ICCR1_SOWP, riic->base + RIIC_ICCR1);
	FUNC7(riic, 0, ICCR1_ICE, RIIC_ICCR1);

	FUNC8(FUNC1(cks), riic->base + RIIC_ICMR1);
	FUNC8(brh | ICBR_RESERVED, riic->base + RIIC_ICBRH);
	FUNC8(brl | ICBR_RESERVED, riic->base + RIIC_ICBRL);

	FUNC8(0, riic->base + RIIC_ICSER);
	FUNC8(ICMR3_ACKWP | ICMR3_RDRFS, riic->base + RIIC_ICMR3);

	FUNC7(riic, ICCR1_IICRST, 0, RIIC_ICCR1);

out:
	FUNC5(riic->adapter.dev.parent);
	return ret;
}