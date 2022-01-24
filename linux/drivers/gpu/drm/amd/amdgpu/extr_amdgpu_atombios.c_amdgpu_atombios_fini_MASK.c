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
struct TYPE_3__ {TYPE_2__* atom_card_info; TYPE_2__* atom_context; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_1__ mode_info; } ;
struct TYPE_4__ {struct TYPE_4__* iio; struct TYPE_4__* scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_vbios_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void FUNC2(struct amdgpu_device *adev)
{
	if (adev->mode_info.atom_context) {
		FUNC1(adev->mode_info.atom_context->scratch);
		FUNC1(adev->mode_info.atom_context->iio);
	}
	FUNC1(adev->mode_info.atom_context);
	adev->mode_info.atom_context = NULL;
	FUNC1(adev->mode_info.atom_card_info);
	adev->mode_info.atom_card_info = NULL;
	FUNC0(adev->dev, &dev_attr_vbios_version);
}