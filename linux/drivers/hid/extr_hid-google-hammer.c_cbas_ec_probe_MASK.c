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
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ input; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct platform_device*) ; 
 TYPE_1__ cbas_ec ; 
 int /*<<< orphan*/  cbas_ec_reglock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int retval;

	FUNC1(&cbas_ec_reglock);

	if (cbas_ec.input) {
		retval = -EBUSY;
		goto out;
	}

	retval = FUNC0(pdev);

out:
	FUNC2(&cbas_ec_reglock);
	return retval;
}