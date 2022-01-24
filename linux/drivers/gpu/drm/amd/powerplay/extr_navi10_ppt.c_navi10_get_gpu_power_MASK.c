#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct smu_context {int dummy; } ;
struct TYPE_3__ {int AverageSocketPower; } ;
typedef  TYPE_1__ SmuMetrics_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct smu_context*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(struct smu_context *smu, uint32_t *value)
{
	int ret = 0;
	SmuMetrics_t metrics;

	if (!value)
		return -EINVAL;

	ret = FUNC0(smu, &metrics);
	if (ret)
		return ret;

	*value = metrics.AverageSocketPower << 8;

	return 0;
}