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
typedef  int u8 ;
struct da9150_gpadc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  da9150; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int DA9150_GPADC_EN_MASK ; 
 int /*<<< orphan*/  DA9150_GPADC_MAN ; 
 int DA9150_GPADC_MUX_SHIFT ; 
 int /*<<< orphan*/  DA9150_GPADC_RES_A ; 
 int DA9150_GPADC_RES_L_BITS ; 
 int DA9150_GPADC_RES_L_MASK ; 
 int DA9150_GPADC_RES_L_SHIFT ; 
 int DA9150_GPADC_RUN_MASK ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct da9150_gpadc *gpadc, int hw_chan)
{
	u8 result_regs[2];
	int result;

	FUNC4(&gpadc->lock);

	/* Set channel & enable measurement */
	FUNC1(gpadc->da9150, DA9150_GPADC_MAN,
			 (DA9150_GPADC_EN_MASK |
			  hw_chan << DA9150_GPADC_MUX_SHIFT));

	/* Consume left-over completion from a previous timeout */
	FUNC6(&gpadc->complete);

	/* Check for actual completion */
	FUNC7(&gpadc->complete, FUNC3(5));

	/* Read result and status from device */
	FUNC0(gpadc->da9150, DA9150_GPADC_RES_A, 2, result_regs);

	FUNC5(&gpadc->lock);

	/* Check to make sure device really has completed reading */
	if (result_regs[1] & DA9150_GPADC_RUN_MASK) {
		FUNC2(gpadc->dev, "Timeout on channel %d of GPADC\n",
			hw_chan);
		return -ETIMEDOUT;
	}

	/* LSBs - 2 bits */
	result = (result_regs[1] & DA9150_GPADC_RES_L_MASK) >>
		 DA9150_GPADC_RES_L_SHIFT;
	/* MSBs - 8 bits */
	result |= result_regs[0] << DA9150_GPADC_RES_L_BITS;

	return result;
}