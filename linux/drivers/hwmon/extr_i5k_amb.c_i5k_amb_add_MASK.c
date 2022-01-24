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

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  amb_pdev ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	int res = -ENODEV;

	/* only ever going to be one of these */
	amb_pdev = FUNC1(DRVNAME, 0);
	if (!amb_pdev)
		return -ENOMEM;

	res = FUNC0(amb_pdev);
	if (res)
		goto err;
	return 0;

err:
	FUNC2(amb_pdev);
	return res;
}