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
struct TYPE_2__ {void* abm_level_property; void* dither_property; void* audio_property; void* underscan_vborder_property; void* underscan_hborder_property; void* underscan_property; void* load_detect_property; void* coherent_mode_property; } ;
struct amdgpu_device {TYPE_1__ mode_info; int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  amdgpu_audio_enum_list ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  amdgpu_dither_enum_list ; 
 int /*<<< orphan*/  amdgpu_underscan_enum_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct amdgpu_device *adev)
{
	int sz;

	adev->mode_info.coherent_mode_property =
		FUNC4(adev->ddev, 0 , "coherent", 0, 1);
	if (!adev->mode_info.coherent_mode_property)
		return -ENOMEM;

	adev->mode_info.load_detect_property =
		FUNC4(adev->ddev, 0, "load detection", 0, 1);
	if (!adev->mode_info.load_detect_property)
		return -ENOMEM;

	FUNC2(adev->ddev);

	sz = FUNC0(amdgpu_underscan_enum_list);
	adev->mode_info.underscan_property =
		FUNC3(adev->ddev, 0,
				    "underscan",
				    amdgpu_underscan_enum_list, sz);

	adev->mode_info.underscan_hborder_property =
		FUNC4(adev->ddev, 0,
					"underscan hborder", 0, 128);
	if (!adev->mode_info.underscan_hborder_property)
		return -ENOMEM;

	adev->mode_info.underscan_vborder_property =
		FUNC4(adev->ddev, 0,
					"underscan vborder", 0, 128);
	if (!adev->mode_info.underscan_vborder_property)
		return -ENOMEM;

	sz = FUNC0(amdgpu_audio_enum_list);
	adev->mode_info.audio_property =
		FUNC3(adev->ddev, 0,
					 "audio",
					 amdgpu_audio_enum_list, sz);

	sz = FUNC0(amdgpu_dither_enum_list);
	adev->mode_info.dither_property =
		FUNC3(adev->ddev, 0,
					 "dither",
					 amdgpu_dither_enum_list, sz);

	if (FUNC1(adev)) {
		adev->mode_info.abm_level_property =
			FUNC4(adev->ddev, 0,
						"abm level", 0, 4);
		if (!adev->mode_info.abm_level_property)
			return -ENOMEM;
	}

	return 0;
}