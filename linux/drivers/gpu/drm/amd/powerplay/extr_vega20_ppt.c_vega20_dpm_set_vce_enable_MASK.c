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
 int /*<<< orphan*/  SMU_FEATURE_DPM_VCE_BIT ; 
 int FUNC0 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct smu_context *smu, bool enable)
{
	if (!FUNC1(smu, SMU_FEATURE_DPM_VCE_BIT))
		return 0;

	if (enable == FUNC0(smu, SMU_FEATURE_DPM_VCE_BIT))
		return 0;

	return FUNC2(smu, SMU_FEATURE_DPM_VCE_BIT, enable);
}