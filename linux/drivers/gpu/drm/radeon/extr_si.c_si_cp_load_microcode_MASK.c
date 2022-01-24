#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct radeon_device {TYPE_3__* me_fw; TYPE_2__* ce_fw; TYPE_1__* pfp_fw; scalar_t__ new_fw; } ;
struct TYPE_8__ {int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct gfx_firmware_header_v1_0 {TYPE_4__ header; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_CE_UCODE_ADDR ; 
 int /*<<< orphan*/  CP_CE_UCODE_DATA ; 
 int /*<<< orphan*/  CP_ME_RAM_DATA ; 
 int /*<<< orphan*/  CP_ME_RAM_RADDR ; 
 int /*<<< orphan*/  CP_ME_RAM_WADDR ; 
 int /*<<< orphan*/  CP_PFP_UCODE_ADDR ; 
 int /*<<< orphan*/  CP_PFP_UCODE_DATA ; 
 int EINVAL ; 
 int SI_CE_UCODE_SIZE ; 
 int SI_PFP_UCODE_SIZE ; 
 int SI_PM4_UCODE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev)
{
	int i;

	if (!rdev->me_fw || !rdev->pfp_fw || !rdev->ce_fw)
		return -EINVAL;

	FUNC5(rdev, false);

	if (rdev->new_fw) {
		const struct gfx_firmware_header_v1_0 *pfp_hdr =
			(const struct gfx_firmware_header_v1_0 *)rdev->pfp_fw->data;
		const struct gfx_firmware_header_v1_0 *ce_hdr =
			(const struct gfx_firmware_header_v1_0 *)rdev->ce_fw->data;
		const struct gfx_firmware_header_v1_0 *me_hdr =
			(const struct gfx_firmware_header_v1_0 *)rdev->me_fw->data;
		const __le32 *fw_data;
		u32 fw_size;

		FUNC4(&pfp_hdr->header);
		FUNC4(&ce_hdr->header);
		FUNC4(&me_hdr->header);

		/* PFP */
		fw_data = (const __le32 *)
			(rdev->pfp_fw->data + FUNC2(pfp_hdr->header.ucode_array_offset_bytes));
		fw_size = FUNC2(pfp_hdr->header.ucode_size_bytes) / 4;
		FUNC0(CP_PFP_UCODE_ADDR, 0);
		for (i = 0; i < fw_size; i++)
			FUNC0(CP_PFP_UCODE_DATA, FUNC3(fw_data++));
		FUNC0(CP_PFP_UCODE_ADDR, 0);

		/* CE */
		fw_data = (const __le32 *)
			(rdev->ce_fw->data + FUNC2(ce_hdr->header.ucode_array_offset_bytes));
		fw_size = FUNC2(ce_hdr->header.ucode_size_bytes) / 4;
		FUNC0(CP_CE_UCODE_ADDR, 0);
		for (i = 0; i < fw_size; i++)
			FUNC0(CP_CE_UCODE_DATA, FUNC3(fw_data++));
		FUNC0(CP_CE_UCODE_ADDR, 0);

		/* ME */
		fw_data = (const __be32 *)
			(rdev->me_fw->data + FUNC2(me_hdr->header.ucode_array_offset_bytes));
		fw_size = FUNC2(me_hdr->header.ucode_size_bytes) / 4;
		FUNC0(CP_ME_RAM_WADDR, 0);
		for (i = 0; i < fw_size; i++)
			FUNC0(CP_ME_RAM_DATA, FUNC3(fw_data++));
		FUNC0(CP_ME_RAM_WADDR, 0);
	} else {
		const __be32 *fw_data;

		/* PFP */
		fw_data = (const __be32 *)rdev->pfp_fw->data;
		FUNC0(CP_PFP_UCODE_ADDR, 0);
		for (i = 0; i < SI_PFP_UCODE_SIZE; i++)
			FUNC0(CP_PFP_UCODE_DATA, FUNC1(fw_data++));
		FUNC0(CP_PFP_UCODE_ADDR, 0);

		/* CE */
		fw_data = (const __be32 *)rdev->ce_fw->data;
		FUNC0(CP_CE_UCODE_ADDR, 0);
		for (i = 0; i < SI_CE_UCODE_SIZE; i++)
			FUNC0(CP_CE_UCODE_DATA, FUNC1(fw_data++));
		FUNC0(CP_CE_UCODE_ADDR, 0);

		/* ME */
		fw_data = (const __be32 *)rdev->me_fw->data;
		FUNC0(CP_ME_RAM_WADDR, 0);
		for (i = 0; i < SI_PM4_UCODE_SIZE; i++)
			FUNC0(CP_ME_RAM_DATA, FUNC1(fw_data++));
		FUNC0(CP_ME_RAM_WADDR, 0);
	}

	FUNC0(CP_PFP_UCODE_ADDR, 0);
	FUNC0(CP_CE_UCODE_ADDR, 0);
	FUNC0(CP_ME_RAM_WADDR, 0);
	FUNC0(CP_ME_RAM_RADDR, 0);
	return 0;
}