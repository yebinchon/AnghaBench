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
typedef  size_t uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int /*<<< orphan*/  smu; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {scalar_t__ set_power_profile_mode; } ;

/* Variables and functions */
 size_t EINVAL ; 
 long PP_SMC_POWER_PROFILE_CUSTOM ; 
 int FUNC0 (struct amdgpu_device*,long*,size_t) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 scalar_t__ FUNC3 (char const) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,long*,size_t) ; 
 char* FUNC7 (char**,char const*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr,
		const char *buf,
		size_t count)
{
	int ret = 0xff;
	struct drm_device *ddev = FUNC1(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	uint32_t parameter_size = 0;
	long parameter[64];
	char *sub_str, buf_cpy[128];
	char *tmp_str;
	uint32_t i = 0;
	char tmp[2];
	long int profile_mode = 0;
	const char delimiter[3] = {' ', '\n', '\0'};

	tmp[0] = *(buf);
	tmp[1] = '\0';
	ret = FUNC4(tmp, 0, &profile_mode);
	if (ret)
		goto fail;

	if (profile_mode == PP_SMC_POWER_PROFILE_CUSTOM) {
		if (count < 2 || count > 127)
			return -EINVAL;
		while (FUNC3(*++buf))
			i++;
		FUNC5(buf_cpy, buf, count-i);
		tmp_str = buf_cpy;
		while (tmp_str[0]) {
			sub_str = FUNC7(&tmp_str, delimiter);
			ret = FUNC4(sub_str, 0, &parameter[parameter_size]);
			if (ret) {
				count = -EINVAL;
				goto fail;
			}
			parameter_size++;
			while (FUNC3(*tmp_str))
				tmp_str++;
		}
	}
	parameter[parameter_size] = profile_mode;
	if (FUNC2(adev))
		ret = FUNC6(&adev->smu, parameter, parameter_size);
	else if (adev->powerplay.pp_funcs->set_power_profile_mode)
		ret = FUNC0(adev, parameter, parameter_size);
	if (!ret)
		return count;
fail:
	return -EINVAL;
}