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
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct cc_fips_handle {TYPE_1__ nb; struct cc_drvdata* drvdata; int /*<<< orphan*/  tasklet; } ;
struct cc_drvdata {scalar_t__ hw_rev; struct cc_fips_handle* fips_handle; } ;

/* Variables and functions */
 scalar_t__ CC_HW_REV_712 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  cc_ree_fips_failure ; 
 int /*<<< orphan*/  FUNC1 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct cc_fips_handle* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  fips_dsr ; 
 int /*<<< orphan*/  fips_fail_notif_chain ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC6(struct cc_drvdata *p_drvdata)
{
	struct cc_fips_handle *fips_h;
	struct device *dev = FUNC4(p_drvdata);

	if (p_drvdata->hw_rev < CC_HW_REV_712)
		return 0;

	fips_h = FUNC3(dev, sizeof(*fips_h), GFP_KERNEL);
	if (!fips_h)
		return -ENOMEM;

	p_drvdata->fips_handle = fips_h;

	FUNC2(dev, "Initializing fips tasklet\n");
	FUNC5(&fips_h->tasklet, fips_dsr, (unsigned long)p_drvdata);
	fips_h->drvdata = p_drvdata;
	fips_h->nb.notifier_call = cc_ree_fips_failure;
	FUNC0(&fips_fail_notif_chain, &fips_h->nb);

	FUNC1(p_drvdata);

	return 0;
}