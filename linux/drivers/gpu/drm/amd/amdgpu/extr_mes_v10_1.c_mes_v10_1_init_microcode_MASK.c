#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct mes_firmware_header_v1_0 {int /*<<< orphan*/  mes_data_start_addr_hi; int /*<<< orphan*/  mes_data_start_addr_lo; int /*<<< orphan*/  mes_uc_start_addr_hi; int /*<<< orphan*/  mes_uc_start_addr_lo; int /*<<< orphan*/  mes_ucode_data_version; int /*<<< orphan*/  mes_ucode_version; } ;
struct TYPE_5__ {int ucode_fw_version; int uc_start_addr; int data_start_addr; TYPE_2__* fw; } ;
struct amdgpu_device {int asic_type; TYPE_1__ mes; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CHIP_NAVI10 128 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev)
{
	const char *chip_name;
	char fw_name[30];
	int err;
	const struct mes_firmware_header_v1_0 *mes_hdr;

	switch (adev->asic_type) {
	case CHIP_NAVI10:
		chip_name = "navi10";
		break;
	default:
		FUNC0();
	}

	FUNC5(fw_name, sizeof(fw_name), "amdgpu/%s_mes.bin", chip_name);
	err = FUNC4(&adev->mes.fw, fw_name, adev->dev);
	if (err)
		return err;

	err = FUNC1(adev->mes.fw);
	if (err) {
		FUNC3(adev->mes.fw);
		adev->mes.fw = NULL;
		return err;
	}

	mes_hdr = (const struct mes_firmware_header_v1_0 *)adev->mes.fw->data;
	adev->mes.ucode_fw_version = FUNC2(mes_hdr->mes_ucode_version);
	adev->mes.ucode_fw_version =
		FUNC2(mes_hdr->mes_ucode_data_version);
	adev->mes.uc_start_addr =
		FUNC2(mes_hdr->mes_uc_start_addr_lo) |
		((uint64_t)(FUNC2(mes_hdr->mes_uc_start_addr_hi)) << 32);
	adev->mes.data_start_addr =
		FUNC2(mes_hdr->mes_data_start_addr_lo) |
		((uint64_t)(FUNC2(mes_hdr->mes_data_start_addr_hi)) << 32);

	return 0;
}