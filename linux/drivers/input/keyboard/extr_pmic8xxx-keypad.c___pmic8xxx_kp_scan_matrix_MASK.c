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
typedef  int u16 ;
struct pmic8xxx_kp {int num_rows; int num_cols; int /*<<< orphan*/  input; int /*<<< orphan*/ * keycodes; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  PM8XXX_ROW_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pmic8xxx_kp *kp, u16 *new_state,
					 u16 *old_state)
{
	int row, col, code;

	for (row = 0; row < kp->num_rows; row++) {
		int bits_changed = new_state[row] ^ old_state[row];

		if (!bits_changed)
			continue;

		for (col = 0; col < kp->num_cols; col++) {
			if (!(bits_changed & (1 << col)))
				continue;

			FUNC1(kp->dev, "key [%d:%d] %s\n", row, col,
					!(new_state[row] & (1 << col)) ?
					"pressed" : "released");

			code = FUNC0(row, col, PM8XXX_ROW_SHIFT);

			FUNC2(kp->input, EV_MSC, MSC_SCAN, code);
			FUNC3(kp->input,
					kp->keycodes[code],
					!(new_state[row] & (1 << col)));

			FUNC4(kp->input);
		}
	}
}