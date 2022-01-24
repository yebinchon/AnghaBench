#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct rlc_firmware_header_v2_0 {TYPE_3__ header; } ;
struct TYPE_5__ {int /*<<< orphan*/  rlc_fw_version; TYPE_1__* rlc_fw; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  RLCG_UCODE_LOADING_START_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRLC_GPM_UCODE_ADDR ; 
 int /*<<< orphan*/  mmRLC_GPM_UCODE_DATA ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	const struct rlc_firmware_header_v2_0 *hdr;
	const __le32 *fw_data;
	unsigned i, fw_size;

	if (!adev->gfx.rlc_fw)
		return -EINVAL;

	hdr = (const struct rlc_firmware_header_v2_0 *)adev->gfx.rlc_fw->data;
	FUNC1(&hdr->header);

	fw_data = (const __le32 *)(adev->gfx.rlc_fw->data +
			   FUNC2(hdr->header.ucode_array_offset_bytes));
	fw_size = FUNC2(hdr->header.ucode_size_bytes) / 4;

	FUNC0(GC, 0, mmRLC_GPM_UCODE_ADDR,
		     RLCG_UCODE_LOADING_START_ADDRESS);

	for (i = 0; i < fw_size; i++)
		FUNC0(GC, 0, mmRLC_GPM_UCODE_DATA,
			     FUNC3(fw_data++));

	FUNC0(GC, 0, mmRLC_GPM_UCODE_ADDR, adev->gfx.rlc_fw_version);

	return 0;
}