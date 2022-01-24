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
struct cma3000_accl_data {scalar_t__ bit_to_mg; int /*<<< orphan*/  input_dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  CMA3000_CTRL ; 
 int /*<<< orphan*/  CMA3000_DOUTX ; 
 int /*<<< orphan*/  CMA3000_DOUTY ; 
 int /*<<< orphan*/  CMA3000_DOUTZ ; 
 int CMA3000_GRANGEMASK ; 
 int /*<<< orphan*/  CMA3000_INTSTATUS ; 
 int CMA3000_INTSTATUS_FFDET ; 
 int CMA3000_MODEMASK ; 
 int FUNC0 (struct cma3000_accl_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct cma3000_accl_data*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__** mode_to_mg ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct cma3000_accl_data *data = dev_id;
	int datax, datay, dataz, intr_status;
	u8 ctrl, mode, range;

	intr_status = FUNC0(data, CMA3000_INTSTATUS, "interrupt status");
	if (intr_status < 0)
		return IRQ_NONE;

	/* Check if free fall is detected, report immediately */
	if (intr_status & CMA3000_INTSTATUS_FFDET) {
		FUNC2(data->input_dev, ABS_MISC, 1);
		FUNC3(data->input_dev);
	} else {
		FUNC2(data->input_dev, ABS_MISC, 0);
	}

	datax = FUNC0(data, CMA3000_DOUTX, "X");
	datay = FUNC0(data, CMA3000_DOUTY, "Y");
	dataz = FUNC0(data, CMA3000_DOUTZ, "Z");

	ctrl = FUNC0(data, CMA3000_CTRL, "ctrl");
	mode = (ctrl & CMA3000_MODEMASK) >> 1;
	range = (ctrl & CMA3000_GRANGEMASK) >> 7;

	data->bit_to_mg = mode_to_mg[mode][range];

	/* Interrupt not for this device */
	if (data->bit_to_mg == 0)
		return IRQ_NONE;

	/* Decode register values to milli g */
	FUNC1(data, &datax, &datay, &dataz);

	FUNC2(data->input_dev, ABS_X, datax);
	FUNC2(data->input_dev, ABS_Y, datay);
	FUNC2(data->input_dev, ABS_Z, dataz);
	FUNC3(data->input_dev);

	return IRQ_HANDLED;
}