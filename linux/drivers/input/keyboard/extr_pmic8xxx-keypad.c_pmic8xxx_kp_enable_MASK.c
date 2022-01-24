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
struct pmic8xxx_kp {int /*<<< orphan*/  dev; int /*<<< orphan*/  ctrl_reg; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYP_CTRL ; 
 int /*<<< orphan*/  KEYP_CTRL_KEYP_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pmic8xxx_kp *kp)
{
	int rc;

	kp->ctrl_reg |= KEYP_CTRL_KEYP_EN;

	rc = FUNC1(kp->regmap, KEYP_CTRL, kp->ctrl_reg);
	if (rc < 0)
		FUNC0(kp->dev, "Error writing KEYP_CTRL reg, rc=%d\n", rc);

	return rc;
}