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
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct bcm_kp {int kpcr; unsigned int n_rows; int n_cols; unsigned int imr0_val; unsigned int imr1_val; unsigned int kpemr; int kpior; TYPE_2__* input_dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int KPCR_COLFILTERENABLE ; 
 unsigned int KPCR_COLFILTERTYPE_MAX ; 
 unsigned int KPCR_COLFILTERTYPE_SHIFT ; 
 int KPCR_COLUMNWIDTH_SHIFT ; 
 unsigned int KPCR_MODE ; 
 int KPCR_ROWWIDTH_SHIFT ; 
 int KPCR_STATUSFILTERENABLE ; 
 unsigned int KPCR_STATUSFILTERTYPE_MAX ; 
 unsigned int KPCR_STATUSFILTERTYPE_SHIFT ; 
 unsigned int KPEMR_EDGETYPE_BOTH ; 
 int KPIOR_COLUMNOCONTRL_SHIFT ; 
 int KPIOR_ROWOCONTRL_SHIFT ; 
 int MAX_COLS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct device*,unsigned int*,int*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct bcm_kp *kp)
{
	struct device *dev = kp->input_dev->dev.parent;
	struct device_node *np = dev->of_node;
	int error;
	unsigned int dt_val;
	unsigned int i;
	unsigned int num_rows, col_mask, rows_set;

	/* Initialize the KPCR Keypad Configuration Register */
	kp->kpcr = KPCR_STATUSFILTERENABLE | KPCR_COLFILTERENABLE;

	error = FUNC2(dev, &kp->n_rows, &kp->n_cols);
	if (error) {
		FUNC1(dev, "failed to parse kp params\n");
		return error;
	}

	/* Set row width for the ASIC block. */
	kp->kpcr |= (kp->n_rows - 1) << KPCR_ROWWIDTH_SHIFT;

	/* Set column width for the ASIC block. */
	kp->kpcr |= (kp->n_cols - 1) << KPCR_COLUMNWIDTH_SHIFT;

	/* Configure the IMR registers */

	/*
	 * IMR registers contain interrupt enable bits for 8x8 matrix
	 * IMR0 register format: <row3> <row2> <row1> <row0>
	 * IMR1 register format: <row7> <row6> <row5> <row4>
	 */
	col_mask = (1 << (kp->n_cols)) - 1;
	num_rows = kp->n_rows;

	/* Set column bits in rows 0 to 3 in IMR0 */
	kp->imr0_val = col_mask;

	rows_set = 1;
	while (--num_rows && rows_set++ < 4)
		kp->imr0_val |= kp->imr0_val << MAX_COLS;

	/* Set column bits in rows 4 to 7 in IMR1 */
	kp->imr1_val = 0;
	if (num_rows) {
		kp->imr1_val = col_mask;
		while (--num_rows)
			kp->imr1_val |= kp->imr1_val << MAX_COLS;
	}

	/* Initialize the KPEMR Keypress Edge Mode Registers */
	/* Trigger on both edges */
	kp->kpemr = 0;
	for (i = 0; i <= 30; i += 2)
		kp->kpemr |= (KPEMR_EDGETYPE_BOTH << i);

	/*
	 * Obtain the Status filter debounce value and verify against the
	 * possible values specified in the DT binding.
	 */
	FUNC4(np, "status-debounce-filter-period", &dt_val);

	if (dt_val > KPCR_STATUSFILTERTYPE_MAX) {
		FUNC1(dev, "Invalid Status filter debounce value %d\n",
			dt_val);
		return -EINVAL;
	}

	kp->kpcr |= dt_val << KPCR_STATUSFILTERTYPE_SHIFT;

	/*
	 * Obtain the Column filter debounce value and verify against the
	 * possible values specified in the DT binding.
	 */
	FUNC4(np, "col-debounce-filter-period", &dt_val);

	if (dt_val > KPCR_COLFILTERTYPE_MAX) {
		FUNC1(dev, "Invalid Column filter debounce value %d\n",
			dt_val);
		return -EINVAL;
	}

	kp->kpcr |= dt_val << KPCR_COLFILTERTYPE_SHIFT;

	/*
	 * Determine between the row and column,
	 * which should be configured as output.
	 */
	if (FUNC3(np, "row-output-enabled")) {
		/*
		* Set RowOContrl or ColumnOContrl in KPIOR
		* to the number of pins to drive as outputs
		*/
		kp->kpior = ((1 << kp->n_rows) - 1) <<
				KPIOR_ROWOCONTRL_SHIFT;
	} else {
		kp->kpior = ((1 << kp->n_cols) - 1) <<
				KPIOR_COLUMNOCONTRL_SHIFT;
	}

	/*
	 * Determine if the scan pull up needs to be enabled
	 */
	if (FUNC3(np, "pull-up-enabled"))
		kp->kpcr |= KPCR_MODE;

	FUNC0(dev, "n_rows=%d n_col=%d kpcr=%x kpior=%x kpemr=%x\n",
		kp->n_rows, kp->n_cols,
		kp->kpcr, kp->kpior, kp->kpemr);

	return 0;
}