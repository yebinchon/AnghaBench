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
 int /*<<< orphan*/  CC_SUSPEND_TIMEOUT ; 
 struct device* FUNC0 (struct cc_drvdata*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

int FUNC4(struct cc_drvdata *drvdata)
{
	struct device *dev = FUNC0(drvdata);

	/* must be before the enabling to avoid resdundent suspending */
	FUNC2(dev, CC_SUSPEND_TIMEOUT);
	FUNC3(dev);
	/* activate the PM module */
	return FUNC1(dev);
}