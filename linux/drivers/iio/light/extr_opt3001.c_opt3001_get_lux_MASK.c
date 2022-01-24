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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct opt3001 {int ok_to_ignore_lock; int result_ready; scalar_t__ int_time; int result; int low_thresh_exp; int low_thresh_mantissa; int /*<<< orphan*/  dev; int /*<<< orphan*/  client; scalar_t__ use_irq; int /*<<< orphan*/  result_ready_queue; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int /*<<< orphan*/  OPT3001_CONFIGURATION ; 
 int OPT3001_CONFIGURATION_CRF ; 
 int /*<<< orphan*/  OPT3001_CONFIGURATION_M_SINGLE ; 
 scalar_t__ OPT3001_INT_TIME_SHORT ; 
 int /*<<< orphan*/  OPT3001_LOW_LIMIT ; 
 int OPT3001_LOW_LIMIT_EOC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  OPT3001_RESULT ; 
 long OPT3001_RESULT_READY_LONG ; 
 long OPT3001_RESULT_READY_SHORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (struct opt3001*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct opt3001*,int /*<<< orphan*/ ,int,int*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct opt3001 *opt, int *val, int *val2)
{
	int ret;
	u16 mantissa;
	u16 reg;
	u8 exponent;
	u16 value;
	long timeout;

	if (opt->use_irq) {
		/*
		 * Enable the end-of-conversion interrupt mechanism. Note that
		 * doing so will overwrite the low-level limit value however we
		 * will restore this value later on.
		 */
		ret = FUNC4(opt->client,
					OPT3001_LOW_LIMIT,
					OPT3001_LOW_LIMIT_EOC_ENABLE);
		if (ret < 0) {
			FUNC2(opt->dev, "failed to write register %02x\n",
					OPT3001_LOW_LIMIT);
			return ret;
		}

		/* Allow IRQ to access the device despite lock being set */
		opt->ok_to_ignore_lock = true;
	}

	/* Reset data-ready indicator flag */
	opt->result_ready = false;

	/* Configure for single-conversion mode and start a new conversion */
	ret = FUNC3(opt->client, OPT3001_CONFIGURATION);
	if (ret < 0) {
		FUNC2(opt->dev, "failed to read register %02x\n",
				OPT3001_CONFIGURATION);
		goto err;
	}

	reg = ret;
	FUNC7(opt, &reg, OPT3001_CONFIGURATION_M_SINGLE);

	ret = FUNC4(opt->client, OPT3001_CONFIGURATION,
			reg);
	if (ret < 0) {
		FUNC2(opt->dev, "failed to write register %02x\n",
				OPT3001_CONFIGURATION);
		goto err;
	}

	if (opt->use_irq) {
		/* Wait for the IRQ to indicate the conversion is complete */
		ret = FUNC9(opt->result_ready_queue,
				opt->result_ready,
				FUNC5(OPT3001_RESULT_READY_LONG));
	} else {
		/* Sleep for result ready time */
		timeout = (opt->int_time == OPT3001_INT_TIME_SHORT) ?
			OPT3001_RESULT_READY_SHORT : OPT3001_RESULT_READY_LONG;
		FUNC6(timeout);

		/* Check result ready flag */
		ret = FUNC3(opt->client,
						  OPT3001_CONFIGURATION);
		if (ret < 0) {
			FUNC2(opt->dev, "failed to read register %02x\n",
				OPT3001_CONFIGURATION);
			goto err;
		}

		if (!(ret & OPT3001_CONFIGURATION_CRF)) {
			ret = -ETIMEDOUT;
			goto err;
		}

		/* Obtain value */
		ret = FUNC3(opt->client, OPT3001_RESULT);
		if (ret < 0) {
			FUNC2(opt->dev, "failed to read register %02x\n",
				OPT3001_RESULT);
			goto err;
		}
		opt->result = ret;
		opt->result_ready = true;
	}

err:
	if (opt->use_irq)
		/* Disallow IRQ to access the device while lock is active */
		opt->ok_to_ignore_lock = false;

	if (ret == 0)
		return -ETIMEDOUT;
	else if (ret < 0)
		return ret;

	if (opt->use_irq) {
		/*
		 * Disable the end-of-conversion interrupt mechanism by
		 * restoring the low-level limit value (clearing
		 * OPT3001_LOW_LIMIT_EOC_ENABLE). Note that selectively clearing
		 * those enable bits would affect the actual limit value due to
		 * bit-overlap and therefore can't be done.
		 */
		value = (opt->low_thresh_exp << 12) | opt->low_thresh_mantissa;
		ret = FUNC4(opt->client,
						   OPT3001_LOW_LIMIT,
						   value);
		if (ret < 0) {
			FUNC2(opt->dev, "failed to write register %02x\n",
					OPT3001_LOW_LIMIT);
			return ret;
		}
	}

	exponent = FUNC0(opt->result);
	mantissa = FUNC1(opt->result);

	FUNC8(opt, exponent, mantissa, val, val2);

	return IIO_VAL_INT_PLUS_MICRO;
}