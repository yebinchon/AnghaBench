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
typedef  int uint32_t ;
struct smu_context {int /*<<< orphan*/  mutex; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_TACH_CTRL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FDO_PWM_MODE_STATIC_RPM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_PERIOD ; 
 int /*<<< orphan*/  THM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmCG_TACH_CTRL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct smu_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct smu_context *smu,
				       uint32_t speed)
{
	struct amdgpu_device *adev = smu->adev;
	int ret;
	uint32_t tach_period, crystal_clock_freq;

	if (!speed)
		return -EINVAL;

	FUNC4(&(smu->mutex));
	ret = FUNC6(smu, 0);
	if (ret)
		goto set_fan_speed_rpm_failed;

	crystal_clock_freq = FUNC3(adev);
	tach_period = 60 * crystal_clock_freq * 10000 / (8 * speed);
	FUNC2(THM, 0, mmCG_TACH_CTRL,
		     FUNC0(FUNC1(THM, 0, mmCG_TACH_CTRL),
				   CG_TACH_CTRL, TARGET_PERIOD,
				   tach_period));

	ret = FUNC7(smu, FDO_PWM_MODE_STATIC_RPM);

set_fan_speed_rpm_failed:
	FUNC5(&(smu->mutex));
	return ret;
}