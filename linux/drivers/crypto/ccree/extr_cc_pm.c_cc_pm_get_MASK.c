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
struct device {int dummy; } ;
struct cc_drvdata {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cc_drvdata*) ; 
 struct cc_drvdata* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 

int FUNC4(struct device *dev)
{
	int rc = 0;
	struct cc_drvdata *drvdata = FUNC1(dev);

	if (FUNC0(drvdata))
		rc = FUNC3(dev);
	else
		FUNC2(dev);

	return rc;
}