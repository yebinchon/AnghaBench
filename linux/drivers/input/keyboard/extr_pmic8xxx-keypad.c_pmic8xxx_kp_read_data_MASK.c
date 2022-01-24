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
typedef  int /*<<< orphan*/  u16 ;
struct pmic8xxx_kp {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct pmic8xxx_kp*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct pmic8xxx_kp *kp, u16 *state,
					u16 data_reg, int read_rows)
{
	int rc, row;
	unsigned int val;

	for (row = 0; row < read_rows; row++) {
		rc = FUNC2(kp->regmap, data_reg, &val);
		if (rc)
			return rc;
		FUNC0(kp->dev, "%d = %d\n", row, val);
		state[row] = FUNC1(kp, val);
	}

	return 0;
}