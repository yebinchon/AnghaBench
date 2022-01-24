#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct common_firmware_header {int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_version; } ;
struct TYPE_11__ {int indirect_sram; int fw_version; int num_vcn_inst; int harvest_config; int /*<<< orphan*/  dpg_sram_cpu_addr; int /*<<< orphan*/  dpg_sram_gpu_addr; int /*<<< orphan*/  dpg_sram_bo; TYPE_3__* inst; TYPE_5__* fw; int /*<<< orphan*/  idle_work; } ;
struct TYPE_9__ {scalar_t__ load_type; } ;
struct amdgpu_device {int asic_type; int rev_id; int pg_flags; int /*<<< orphan*/  dev; TYPE_4__ vcn; TYPE_2__ firmware; TYPE_1__* pdev; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_10__ {int /*<<< orphan*/  cpu_addr; int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/  vcpu_bo; } ;
struct TYPE_8__ {int device; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned long AMDGPU_VCN_CONTEXT_SIZE ; 
 unsigned long AMDGPU_VCN_STACK_SIZE ; 
 int AMD_PG_SUPPORT_VCN_DPG ; 
#define  CHIP_ARCTURUS 133 
#define  CHIP_NAVI10 132 
#define  CHIP_NAVI12 131 
#define  CHIP_NAVI14 130 
#define  CHIP_RAVEN 129 
#define  CHIP_RENOIR 128 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,unsigned int,...) ; 
 int EINVAL ; 
 char* FIRMWARE_ARCTURUS ; 
 char* FIRMWARE_NAVI10 ; 
 char* FIRMWARE_NAVI12 ; 
 char* FIRMWARE_NAVI14 ; 
 char* FIRMWARE_PICASSO ; 
 char* FIRMWARE_RAVEN ; 
 char* FIRMWARE_RAVEN2 ; 
 char* FIRMWARE_RENOIR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC3 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  amdgpu_vcn_idle_work_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int FUNC8 (TYPE_5__**,char const*,int /*<<< orphan*/ ) ; 

int FUNC9(struct amdgpu_device *adev)
{
	unsigned long bo_size;
	const char *fw_name;
	const struct common_firmware_header *hdr;
	unsigned char fw_check;
	int i, r;

	FUNC2(&adev->vcn.idle_work, amdgpu_vcn_idle_work_handler);

	switch (adev->asic_type) {
	case CHIP_RAVEN:
		if (adev->rev_id >= 8)
			fw_name = FIRMWARE_RAVEN2;
		else if (adev->pdev->device == 0x15d8)
			fw_name = FIRMWARE_PICASSO;
		else
			fw_name = FIRMWARE_RAVEN;
		break;
	case CHIP_ARCTURUS:
		fw_name = FIRMWARE_ARCTURUS;
		break;
	case CHIP_RENOIR:
		fw_name = FIRMWARE_RENOIR;
		if ((adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) &&
		    (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG))
			adev->vcn.indirect_sram = true;
		break;
	case CHIP_NAVI10:
		fw_name = FIRMWARE_NAVI10;
		if ((adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) &&
		    (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG))
			adev->vcn.indirect_sram = true;
		break;
	case CHIP_NAVI14:
		fw_name = FIRMWARE_NAVI14;
		if ((adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) &&
		    (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG))
			adev->vcn.indirect_sram = true;
		break;
	case CHIP_NAVI12:
		fw_name = FIRMWARE_NAVI12;
		if ((adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) &&
		    (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG))
			adev->vcn.indirect_sram = true;
		break;
	default:
		return -EINVAL;
	}

	r = FUNC8(&adev->vcn.fw, fw_name, adev->dev);
	if (r) {
		FUNC5(adev->dev, "amdgpu_vcn: Can't load firmware \"%s\"\n",
			fw_name);
		return r;
	}

	r = FUNC4(adev->vcn.fw);
	if (r) {
		FUNC5(adev->dev, "amdgpu_vcn: Can't validate firmware \"%s\"\n",
			fw_name);
		FUNC7(adev->vcn.fw);
		adev->vcn.fw = NULL;
		return r;
	}

	hdr = (const struct common_firmware_header *)adev->vcn.fw->data;
	adev->vcn.fw_version = FUNC6(hdr->ucode_version);

	/* Bit 20-23, it is encode major and non-zero for new naming convention.
	 * This field is part of version minor and DRM_DISABLED_FLAG in old naming
	 * convention. Since the l:wq!atest version minor is 0x5B and DRM_DISABLED_FLAG
	 * is zero in old naming convention, this field is always zero so far.
	 * These four bits are used to tell which naming convention is present.
	 */
	fw_check = (FUNC6(hdr->ucode_version) >> 20) & 0xf;
	if (fw_check) {
		unsigned int dec_ver, enc_major, enc_minor, vep, fw_rev;

		fw_rev = FUNC6(hdr->ucode_version) & 0xfff;
		enc_minor = (FUNC6(hdr->ucode_version) >> 12) & 0xff;
		enc_major = fw_check;
		dec_ver = (FUNC6(hdr->ucode_version) >> 24) & 0xf;
		vep = (FUNC6(hdr->ucode_version) >> 28) & 0xf;
		FUNC1("Found VCN firmware Version ENC: %hu.%hu DEC: %hu VEP: %hu Revision: %hu\n",
			enc_major, enc_minor, dec_ver, vep, fw_rev);
	} else {
		unsigned int version_major, version_minor, family_id;

		family_id = FUNC6(hdr->ucode_version) & 0xff;
		version_major = (FUNC6(hdr->ucode_version) >> 24) & 0xff;
		version_minor = (FUNC6(hdr->ucode_version) >> 8) & 0xff;
		FUNC1("Found VCN firmware Version: %hu.%hu Family ID: %hu\n",
			version_major, version_minor, family_id);
	}

	bo_size = AMDGPU_VCN_STACK_SIZE + AMDGPU_VCN_CONTEXT_SIZE;
	if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP)
		bo_size += FUNC0(FUNC6(hdr->ucode_size_bytes) + 8);

	for (i = 0; i < adev->vcn.num_vcn_inst; i++) {
		if (adev->vcn.harvest_config & (1 << i))
			continue;

		r = FUNC3(adev, bo_size, PAGE_SIZE,
						AMDGPU_GEM_DOMAIN_VRAM, &adev->vcn.inst[i].vcpu_bo,
						&adev->vcn.inst[i].gpu_addr, &adev->vcn.inst[i].cpu_addr);
		if (r) {
			FUNC5(adev->dev, "(%d) failed to allocate vcn bo\n", r);
			return r;
		}
	}

	if (adev->vcn.indirect_sram) {
		r = FUNC3(adev, 64 * 2 * 4, PAGE_SIZE,
			    AMDGPU_GEM_DOMAIN_VRAM, &adev->vcn.dpg_sram_bo,
			    &adev->vcn.dpg_sram_gpu_addr, &adev->vcn.dpg_sram_cpu_addr);
		if (r) {
			FUNC5(adev->dev, "(%d) failed to allocate DPG bo\n", r);
			return r;
		}
	}

	return 0;
}