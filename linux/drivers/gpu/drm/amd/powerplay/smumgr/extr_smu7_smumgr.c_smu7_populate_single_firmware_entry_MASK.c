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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct pp_hwmgr {int /*<<< orphan*/  not_vf; int /*<<< orphan*/  device; } ;
struct cgs_firmware_info {int image_size; int /*<<< orphan*/  mc_addr; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  member_0; } ;
struct SMU_Entry {int data_size_byte; int flags; scalar_t__ num_register_entries; scalar_t__ meta_data_addr_low; scalar_t__ meta_data_addr_high; int /*<<< orphan*/  image_addr_low; int /*<<< orphan*/  image_addr_high; scalar_t__ id; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 scalar_t__ UCODE_ID_CP_MEC ; 
 scalar_t__ UCODE_ID_RLC_G ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cgs_firmware_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr,
						uint32_t fw_type,
						struct SMU_Entry *entry)
{
	int result = 0;
	struct cgs_firmware_info info = {0};

	result = FUNC0(hwmgr->device,
				FUNC2(fw_type),
				&info);

	if (!result) {
		entry->version = info.fw_version;
		entry->id = (uint16_t)fw_type;
		entry->image_addr_high = FUNC3(info.mc_addr);
		entry->image_addr_low = FUNC1(info.mc_addr);
		entry->meta_data_addr_high = 0;
		entry->meta_data_addr_low = 0;

		/* digest need be excluded out */
		if (!hwmgr->not_vf)
			info.image_size -= 20;
		entry->data_size_byte = info.image_size;
		entry->num_register_entries = 0;
	}

	if ((fw_type == UCODE_ID_RLC_G)
		|| (fw_type == UCODE_ID_CP_MEC))
		entry->flags = 1;
	else
		entry->flags = 0;

	return 0;
}