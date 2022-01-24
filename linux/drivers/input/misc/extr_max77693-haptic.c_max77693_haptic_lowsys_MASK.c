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
struct max77693_haptic {scalar_t__ dev_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap_pmic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX77693_PMIC_LOW_SYS_MASK ; 
 int MAX77693_PMIC_LOW_SYS_SHIFT ; 
 int /*<<< orphan*/  MAX77693_PMIC_REG_LSCNFG ; 
 scalar_t__ TYPE_MAX77693 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct max77693_haptic *haptic, bool enable)
{
	int error;

	if (haptic->dev_type != TYPE_MAX77693)
		return 0;

	error = FUNC1(haptic->regmap_pmic,
				   MAX77693_PMIC_REG_LSCNFG,
				   MAX77693_PMIC_LOW_SYS_MASK,
				   enable << MAX77693_PMIC_LOW_SYS_SHIFT);
	if (error) {
		FUNC0(haptic->dev, "cannot update pmic regmap: %d\n", error);
		return error;
	}

	return 0;
}