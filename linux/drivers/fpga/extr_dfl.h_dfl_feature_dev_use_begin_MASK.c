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
struct dfl_feature_platform_data {int /*<<< orphan*/  dev_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATUS_IN_USE ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline
int FUNC1(struct dfl_feature_platform_data *pdata)
{
	/* Test and set IN_USE flags to ensure file is exclusively used */
	if (FUNC0(DEV_STATUS_IN_USE, &pdata->dev_status))
		return -EBUSY;

	return 0;
}