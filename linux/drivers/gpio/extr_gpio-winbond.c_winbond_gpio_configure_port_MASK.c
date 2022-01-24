#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct winbond_gpio_port_conflict {scalar_t__ dev; int /*<<< orphan*/ * name; scalar_t__ warnonly; int /*<<< orphan*/  testbit; int /*<<< orphan*/  testreg; } ;
struct winbond_gpio_info {scalar_t__ dev; int /*<<< orphan*/  outputppbit; int /*<<< orphan*/  outputreg; int /*<<< orphan*/  enablebit; int /*<<< orphan*/  enablereg; struct winbond_gpio_port_conflict conflict; } ;
struct TYPE_2__ {int ppgpios; int odgpios; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ WB_SIO_DEV_NONE ; 
 TYPE_1__ params ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct winbond_gpio_info* winbond_gpio_infos ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,scalar_t__) ; 

__attribute__((used)) static bool FUNC9(unsigned long base, unsigned int idx)
{
	const struct winbond_gpio_info *info = &winbond_gpio_infos[idx];
	const struct winbond_gpio_port_conflict *conflict = &info->conflict;

	/* is there a possible conflicting device defined? */
	if (conflict->name != NULL) {
		if (conflict->dev != WB_SIO_DEV_NONE)
			FUNC8(base, conflict->dev);

		if (FUNC7(base, conflict->testreg,
					  conflict->testbit)) {
			if (conflict->warnonly)
				FUNC2("enabled GPIO%u share pins with active %s\n",
					idx + 1, conflict->name);
			else {
				FUNC2("disabling GPIO%u as %s is enabled\n",
					idx + 1, conflict->name);
				return false;
			}
		}
	}

	/* GPIO1 and GPIO2 need some (additional) special handling */
	if (idx == 0)
		FUNC3(base);
	else if (idx == 1)
		FUNC4(base);

	FUNC8(base, info->dev);

	FUNC6(base, info->enablereg, info->enablebit);

	if (params.ppgpios & FUNC0(idx))
		FUNC6(base, info->outputreg,
				     info->outputppbit);
	else if (params.odgpios & FUNC0(idx))
		FUNC5(base, info->outputreg,
				       info->outputppbit);
	else
		FUNC1("GPIO%u pins are %s\n", idx + 1,
			  FUNC7(base, info->outputreg,
						info->outputppbit) ?
			  "push-pull" :
			  "open drain");

	return true;
}