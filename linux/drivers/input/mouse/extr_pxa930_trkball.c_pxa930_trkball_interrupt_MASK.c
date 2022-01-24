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
struct pxa930_trkball {scalar_t__ mmio_base; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 scalar_t__ TBCNTR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ TBSBC ; 
 int /*<<< orphan*/  TBSBC_TBSBC ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct pxa930_trkball *trkball = dev_id;
	struct input_dev *input = trkball->input;
	int tbcntr, x, y;

	/* According to the spec software must read TBCNTR twice:
	 * if the read value is the same, the reading is valid
	 */
	tbcntr = FUNC4(trkball->mmio_base + TBCNTR);

	if (tbcntr == FUNC4(trkball->mmio_base + TBCNTR)) {
		x = (FUNC1(tbcntr) - FUNC0(tbcntr)) / 2;
		y = (FUNC3(tbcntr) - FUNC2(tbcntr)) / 2;

		FUNC6(input, REL_X, x);
		FUNC6(input, REL_Y, y);
		FUNC7(input);
	}

	FUNC5(TBSBC_TBSBC, trkball->mmio_base + TBSBC);
	FUNC5(0, trkball->mmio_base + TBSBC);

	return IRQ_HANDLED;
}