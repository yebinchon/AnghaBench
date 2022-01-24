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
struct TYPE_10__ {int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_version; } ;
struct gfx_firmware_header_v1_0 {TYPE_5__ header; int /*<<< orphan*/  ucode_feature_version; } ;
struct TYPE_9__ {int pfp_fw_version; int ce_fw_version; int me_fw_version; int me_feature_version; int ce_feature_version; int pfp_feature_version; TYPE_3__* me_fw; TYPE_2__* ce_fw; TYPE_1__* pfp_fw; } ;
struct amdgpu_device {TYPE_4__ gfx; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCP_CE_UCODE_ADDR ; 
 int /*<<< orphan*/  mmCP_CE_UCODE_DATA ; 
 int /*<<< orphan*/  mmCP_ME_RAM_DATA ; 
 int /*<<< orphan*/  mmCP_ME_RAM_WADDR ; 
 int /*<<< orphan*/  mmCP_PFP_UCODE_ADDR ; 
 int /*<<< orphan*/  mmCP_PFP_UCODE_DATA ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	const struct gfx_firmware_header_v1_0 *pfp_hdr;
	const struct gfx_firmware_header_v1_0 *ce_hdr;
	const struct gfx_firmware_header_v1_0 *me_hdr;
	const __le32 *fw_data;
	unsigned i, fw_size;

	if (!adev->gfx.me_fw || !adev->gfx.pfp_fw || !adev->gfx.ce_fw)
		return -EINVAL;

	pfp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.pfp_fw->data;
	ce_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.ce_fw->data;
	me_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.me_fw->data;

	FUNC1(&pfp_hdr->header);
	FUNC1(&ce_hdr->header);
	FUNC1(&me_hdr->header);
	adev->gfx.pfp_fw_version = FUNC3(pfp_hdr->header.ucode_version);
	adev->gfx.ce_fw_version = FUNC3(ce_hdr->header.ucode_version);
	adev->gfx.me_fw_version = FUNC3(me_hdr->header.ucode_version);
	adev->gfx.me_feature_version = FUNC3(me_hdr->ucode_feature_version);
	adev->gfx.ce_feature_version = FUNC3(ce_hdr->ucode_feature_version);
	adev->gfx.pfp_feature_version = FUNC3(pfp_hdr->ucode_feature_version);

	FUNC2(adev, false);

	/* PFP */
	fw_data = (const __le32 *)
		(adev->gfx.pfp_fw->data +
		 FUNC3(pfp_hdr->header.ucode_array_offset_bytes));
	fw_size = FUNC3(pfp_hdr->header.ucode_size_bytes) / 4;
	FUNC0(mmCP_PFP_UCODE_ADDR, 0);
	for (i = 0; i < fw_size; i++)
		FUNC0(mmCP_PFP_UCODE_DATA, FUNC4(fw_data++));
	FUNC0(mmCP_PFP_UCODE_ADDR, adev->gfx.pfp_fw_version);

	/* CE */
	fw_data = (const __le32 *)
		(adev->gfx.ce_fw->data +
		 FUNC3(ce_hdr->header.ucode_array_offset_bytes));
	fw_size = FUNC3(ce_hdr->header.ucode_size_bytes) / 4;
	FUNC0(mmCP_CE_UCODE_ADDR, 0);
	for (i = 0; i < fw_size; i++)
		FUNC0(mmCP_CE_UCODE_DATA, FUNC4(fw_data++));
	FUNC0(mmCP_CE_UCODE_ADDR, adev->gfx.ce_fw_version);

	/* ME */
	fw_data = (const __le32 *)
		(adev->gfx.me_fw->data +
		 FUNC3(me_hdr->header.ucode_array_offset_bytes));
	fw_size = FUNC3(me_hdr->header.ucode_size_bytes) / 4;
	FUNC0(mmCP_ME_RAM_WADDR, 0);
	for (i = 0; i < fw_size; i++)
		FUNC0(mmCP_ME_RAM_DATA, FUNC4(fw_data++));
	FUNC0(mmCP_ME_RAM_WADDR, adev->gfx.me_fw_version);

	return 0;
}