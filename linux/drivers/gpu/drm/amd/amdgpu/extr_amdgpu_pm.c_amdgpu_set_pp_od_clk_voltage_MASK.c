#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int /*<<< orphan*/  smu; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {scalar_t__ dispatch_tasks; scalar_t__ odn_edit_dpm_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_PP_TASK_READJUST_POWER_STATE ; 
 size_t EINVAL ; 
 scalar_t__ PP_OD_COMMIT_DPM_TABLE ; 
 scalar_t__ PP_OD_EDIT_MCLK_VDDC_TABLE ; 
 scalar_t__ PP_OD_EDIT_SCLK_VDDC_TABLE ; 
 scalar_t__ PP_OD_EDIT_VDDC_CURVE ; 
 scalar_t__ PP_OD_RESTORE_DEFAULT_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct amdgpu_device*,scalar_t__,long*,scalar_t__) ; 
 struct drm_device* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 scalar_t__ FUNC4 (char) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,long*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 char* FUNC9 (char**,char const*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr,
		const char *buf,
		size_t count)
{
	struct drm_device *ddev = FUNC2(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	int ret;
	uint32_t parameter_size = 0;
	long parameter[64];
	char buf_cpy[128];
	char *tmp_str;
	char *sub_str;
	const char delimiter[3] = {' ', '\n', '\0'};
	uint32_t type;

	if (count > 127)
		return -EINVAL;

	if (*buf == 's')
		type = PP_OD_EDIT_SCLK_VDDC_TABLE;
	else if (*buf == 'm')
		type = PP_OD_EDIT_MCLK_VDDC_TABLE;
	else if(*buf == 'r')
		type = PP_OD_RESTORE_DEFAULT_TABLE;
	else if (*buf == 'c')
		type = PP_OD_COMMIT_DPM_TABLE;
	else if (!FUNC8(buf, "vc", 2))
		type = PP_OD_EDIT_VDDC_CURVE;
	else
		return -EINVAL;

	FUNC6(buf_cpy, buf, count+1);

	tmp_str = buf_cpy;

	if (type == PP_OD_EDIT_VDDC_CURVE)
		tmp_str++;
	while (FUNC4(*++tmp_str));

	while (tmp_str[0]) {
		sub_str = FUNC9(&tmp_str, delimiter);
		ret = FUNC5(sub_str, 0, &parameter[parameter_size]);
		if (ret)
			return -EINVAL;
		parameter_size++;

		while (FUNC4(*tmp_str))
			tmp_str++;
	}

	if (FUNC3(adev)) {
		ret = FUNC7(&adev->smu, type,
					    parameter, parameter_size);

		if (ret)
			return -EINVAL;
	} else {
		if (adev->powerplay.pp_funcs->odn_edit_dpm_table) {
			ret = FUNC1(adev, type,
						parameter, parameter_size);
			if (ret)
				return -EINVAL;
		}

		if (type == PP_OD_COMMIT_DPM_TABLE) {
			if (adev->powerplay.pp_funcs->dispatch_tasks) {
				FUNC0(adev,
						AMD_PP_TASK_READJUST_POWER_STATE,
						NULL);
				return count;
			} else {
				return -EINVAL;
			}
		}
	}

	return count;
}