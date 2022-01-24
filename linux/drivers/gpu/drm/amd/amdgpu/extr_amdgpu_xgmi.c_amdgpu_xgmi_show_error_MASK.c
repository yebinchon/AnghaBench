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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {TYPE_1__* df_funcs; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int (* get_fica ) (struct amdgpu_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_fica ) (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				      struct device_attribute *attr,
				      char *buf)
{
	struct drm_device *ddev = FUNC1(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	uint32_t ficaa_pie_ctl_in, ficaa_pie_status_in;
	uint64_t fica_out;
	unsigned int error_count = 0;

	ficaa_pie_ctl_in = FUNC0(0x200);
	ficaa_pie_status_in = FUNC0(0x208);

	fica_out = adev->df_funcs->get_fica(adev, ficaa_pie_ctl_in);
	if (fica_out != 0x1f)
		FUNC2("xGMI error counters not enabled!\n");

	fica_out = adev->df_funcs->get_fica(adev, ficaa_pie_status_in);

	if ((fica_out & 0xffff) == 2)
		error_count = ((fica_out >> 62) & 0x1) + (fica_out >> 63);

	adev->df_funcs->set_fica(adev, ficaa_pie_status_in, 0, 0);

	return FUNC3(buf, PAGE_SIZE, "%d\n", error_count);
}