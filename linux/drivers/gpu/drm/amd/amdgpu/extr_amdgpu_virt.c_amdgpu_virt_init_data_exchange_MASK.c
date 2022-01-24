#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  checksum_key; struct amd_sriov_msg_pf2vf_info_header* p_vf2pf; struct amd_sriov_msg_pf2vf_info_header* p_pf2vf; } ;
struct TYPE_8__ {int gim_feature; TYPE_2__ fw_reserve; } ;
struct TYPE_6__ {int /*<<< orphan*/ * va; } ;
struct amdgpu_device {TYPE_3__ virt; TYPE_1__ fw_vram_usage; } ;
struct amd_sriov_msg_pf2vf_info_header {int dummy; } ;
typedef  int /*<<< orphan*/  amdgim_vf2pf_info ;
struct TYPE_10__ {char* version; } ;
struct TYPE_9__ {int size; int version; } ;

/* Variables and functions */
 int AMDGIM_DATAEXCHANGE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,char**) ; 
 int AMDGPU_FW_VRAM_VF2PF_VER ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int,int) ; 
 TYPE_5__* THIS_MODULE ; 
 int FUNC3 (struct amd_sriov_msg_pf2vf_info_header*,int,int /*<<< orphan*/ ,int) ; 
 int driver_cert ; 
 int /*<<< orphan*/  driver_version ; 
 int feature_flags ; 
 TYPE_4__ header ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void FUNC6(struct amdgpu_device *adev)
{
	uint32_t pf2vf_size = 0;
	uint32_t checksum = 0;
	uint32_t checkval;
	char *str;

	adev->virt.fw_reserve.p_pf2vf = NULL;
	adev->virt.fw_reserve.p_vf2pf = NULL;

	if (adev->fw_vram_usage.va != NULL) {
		adev->virt.fw_reserve.p_pf2vf =
			(struct amd_sriov_msg_pf2vf_info_header *)(
			adev->fw_vram_usage.va + AMDGIM_DATAEXCHANGE_OFFSET);
		FUNC0(adev, header.size, &pf2vf_size);
		FUNC0(adev, checksum, &checksum);
		FUNC0(adev, feature_flags, &adev->virt.gim_feature);

		/* pf2vf message must be in 4K */
		if (pf2vf_size > 0 && pf2vf_size < 4096) {
			checkval = FUNC3(
				adev->virt.fw_reserve.p_pf2vf, pf2vf_size,
				adev->virt.fw_reserve.checksum_key, checksum);
			if (checkval == checksum) {
				adev->virt.fw_reserve.p_vf2pf =
					((void *)adev->virt.fw_reserve.p_pf2vf +
					pf2vf_size);
				FUNC4((void *)adev->virt.fw_reserve.p_vf2pf, 0,
					sizeof(amdgim_vf2pf_info));
				FUNC2(adev, header.version,
					AMDGPU_FW_VRAM_VF2PF_VER);
				FUNC2(adev, header.size,
					sizeof(amdgim_vf2pf_info));
				FUNC1(adev, driver_version,
					&str);
#ifdef MODULE
				if (THIS_MODULE->version != NULL)
					strcpy(str, THIS_MODULE->version);
				else
#endif
					FUNC5(str, "N/A");
				FUNC2(adev, driver_cert,
					0);
				FUNC2(adev, checksum,
					FUNC3(
					adev->virt.fw_reserve.p_vf2pf,
					pf2vf_size,
					adev->virt.fw_reserve.checksum_key, 0));
			}
		}
	}
}