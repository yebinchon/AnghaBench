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
struct dfl_feature_platform_data {int dummy; } ;
struct dfl_afu {int /*<<< orphan*/  regions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dfl_afu* FUNC1 (struct dfl_feature_platform_data*) ; 

void FUNC2(struct dfl_feature_platform_data *pdata)
{
	struct dfl_afu *afu = FUNC1(pdata);

	FUNC0(&afu->regions);
}