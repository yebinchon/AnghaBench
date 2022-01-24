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
struct card_info {int /*<<< orphan*/  pll_write; int /*<<< orphan*/  pll_read; int /*<<< orphan*/  mc_write; int /*<<< orphan*/  mc_read; void* ioreg_write; void* ioreg_read; void* reg_write; void* reg_read; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {TYPE_2__* atom_context; struct card_info* atom_card_info; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; scalar_t__ is_atom_fw; TYPE_1__ mode_info; int /*<<< orphan*/  bios; scalar_t__ rio_mem; int /*<<< orphan*/  ddev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC2 (struct card_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 void* cail_ioreg_read ; 
 void* cail_ioreg_write ; 
 int /*<<< orphan*/  cail_mc_read ; 
 int /*<<< orphan*/  cail_mc_write ; 
 int /*<<< orphan*/  cail_pll_read ; 
 int /*<<< orphan*/  cail_pll_write ; 
 void* cail_reg_read ; 
 void* cail_reg_write ; 
 int /*<<< orphan*/  dev_attr_vbios_version ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct card_info* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct amdgpu_device *adev)
{
	struct card_info *atom_card_info =
	    FUNC9(sizeof(struct card_info), GFP_KERNEL);
	int ret;

	if (!atom_card_info)
		return -ENOMEM;

	adev->mode_info.atom_card_info = atom_card_info;
	atom_card_info->dev = adev->ddev;
	atom_card_info->reg_read = cail_reg_read;
	atom_card_info->reg_write = cail_reg_write;
	/* needed for iio ops */
	if (adev->rio_mem) {
		atom_card_info->ioreg_read = cail_ioreg_read;
		atom_card_info->ioreg_write = cail_ioreg_write;
	} else {
		FUNC0("PCI I/O BAR is not found. Using MMIO to access ATOM BIOS\n");
		atom_card_info->ioreg_read = cail_reg_read;
		atom_card_info->ioreg_write = cail_reg_write;
	}
	atom_card_info->mc_read = cail_mc_read;
	atom_card_info->mc_write = cail_mc_write;
	atom_card_info->pll_read = cail_pll_read;
	atom_card_info->pll_write = cail_pll_write;

	adev->mode_info.atom_context = FUNC2(atom_card_info, adev->bios);
	if (!adev->mode_info.atom_context) {
		FUNC4(adev);
		return -ENOMEM;
	}

	FUNC10(&adev->mode_info.atom_context->mutex);
	if (adev->is_atom_fw) {
		FUNC7(adev);
		FUNC6(adev);
	} else {
		FUNC5(adev);
		FUNC3(adev);
	}

	ret = FUNC8(adev->dev, &dev_attr_vbios_version);
	if (ret) {
		FUNC1("Failed to create device file for VBIOS version\n");
		return ret;
	}

	return 0;
}