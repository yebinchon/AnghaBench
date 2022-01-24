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
struct regmap {int dummy; } ;
struct pmic8xxx_pwrkey {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM8921_SLEEP_CTRL ; 
 int /*<<< orphan*/  SLEEP_CTRL_SMPL_EN_RESET ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pmic8xxx_pwrkey *pwrkey, bool reset)
{
	struct regmap *regmap = pwrkey->regmap;
	u8 mask = SLEEP_CTRL_SMPL_EN_RESET;
	u8 val = 0;

	/* Enable SMPL if resetting is desired */
	if (reset)
		val = mask;
	return FUNC0(regmap, PM8921_SLEEP_CTRL, mask, val);
}