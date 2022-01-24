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
struct smu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct smu_context*) ; 

__attribute__((used)) static int FUNC2(struct smu_context *smu)
{
	int ret;

	ret = FUNC1(smu);
	if (ret) {
		FUNC0("Failed to smu_fini_smc_tables!\n");
		return ret;
	}

	return 0;
}