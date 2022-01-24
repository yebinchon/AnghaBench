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
struct pmic8xxx_kp {int num_rows; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYP_CLOCK_FREQ ; 
 int /*<<< orphan*/  KEYP_OLD_DATA ; 
 int /*<<< orphan*/  KEYP_RECENT_DATA ; 
 int /*<<< orphan*/  KEYP_SCAN ; 
 int PM8XXX_MIN_ROWS ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pmic8xxx_kp*) ; 
 int FUNC3 (struct pmic8xxx_kp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct pmic8xxx_kp *kp, u16 *new_state,
					 u16 *old_state)
{
	int rc, read_rows;
	unsigned int scan_val;

	if (kp->num_rows < PM8XXX_MIN_ROWS)
		read_rows = PM8XXX_MIN_ROWS;
	else
		read_rows = kp->num_rows;

	FUNC2(kp);

	if (old_state) {
		rc = FUNC3(kp, old_state, KEYP_OLD_DATA,
						read_rows);
		if (rc < 0) {
			FUNC1(kp->dev,
				"Error reading KEYP_OLD_DATA, rc=%d\n", rc);
			return rc;
		}
	}

	rc = FUNC3(kp, new_state, KEYP_RECENT_DATA,
					 read_rows);
	if (rc < 0) {
		FUNC1(kp->dev,
			"Error reading KEYP_RECENT_DATA, rc=%d\n", rc);
		return rc;
	}

	/* 4 * 32KHz clocks */
	FUNC6((4 * FUNC0(USEC_PER_SEC, KEYP_CLOCK_FREQ)) + 1);

	rc = FUNC4(kp->regmap, KEYP_SCAN, &scan_val);
	if (rc < 0) {
		FUNC1(kp->dev, "Error reading KEYP_SCAN reg, rc=%d\n", rc);
		return rc;
	}

	scan_val &= 0xFE;
	rc = FUNC5(kp->regmap, KEYP_SCAN, scan_val);
	if (rc < 0)
		FUNC1(kp->dev, "Error writing KEYP_SCAN reg, rc=%d\n", rc);

	return rc;
}