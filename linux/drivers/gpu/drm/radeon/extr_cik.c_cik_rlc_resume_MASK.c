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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  ucode_version; int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct rlc_firmware_header_v1_0 {TYPE_2__ header; } ;
struct radeon_device {int family; TYPE_1__* rlc_fw; scalar_t__ new_fw; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ BONAIRE_RLC_UCODE_SIZE ; 
#define  CHIP_BONAIRE 132 
#define  CHIP_HAWAII 131 
#define  CHIP_KABINI 130 
#define  CHIP_KAVERI 129 
#define  CHIP_MULLINS 128 
 int EINVAL ; 
 scalar_t__ KB_RLC_UCODE_SIZE ; 
 scalar_t__ KV_RLC_UCODE_SIZE ; 
 scalar_t__ ML_RLC_UCODE_SIZE ; 
 int /*<<< orphan*/  RLC_CGCG_CGLS_CTRL ; 
 int /*<<< orphan*/  RLC_DRIVER_DMA_STATUS ; 
 int /*<<< orphan*/  RLC_GPM_UCODE_ADDR ; 
 int /*<<< orphan*/  RLC_GPM_UCODE_DATA ; 
 int /*<<< orphan*/  RLC_LB_CNTL ; 
 int /*<<< orphan*/  RLC_LB_CNTR_INIT ; 
 int /*<<< orphan*/  RLC_LB_CNTR_MAX ; 
 int /*<<< orphan*/  RLC_LB_INIT_CU_MASK ; 
 int /*<<< orphan*/  RLC_LB_PARAMS ; 
 int /*<<< orphan*/  RLC_MC_CNTL ; 
 int /*<<< orphan*/  RLC_UCODE_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC13(struct radeon_device *rdev)
{
	u32 i, size, tmp;

	if (!rdev->rlc_fw)
		return -EINVAL;

	FUNC7(rdev);

	/* disable CG */
	tmp = FUNC0(RLC_CGCG_CGLS_CTRL) & 0xfffffffc;
	FUNC1(RLC_CGCG_CGLS_CTRL, tmp);

	FUNC12(rdev);

	FUNC5(rdev);

	FUNC4(rdev);

	FUNC1(RLC_LB_CNTR_INIT, 0);
	FUNC1(RLC_LB_CNTR_MAX, 0x00008000);

	FUNC8(rdev, 0xffffffff, 0xffffffff);
	FUNC1(RLC_LB_INIT_CU_MASK, 0xffffffff);
	FUNC1(RLC_LB_PARAMS, 0x00600408);
	FUNC1(RLC_LB_CNTL, 0x80000004);

	FUNC1(RLC_MC_CNTL, 0);
	FUNC1(RLC_UCODE_CNTL, 0);

	if (rdev->new_fw) {
		const struct rlc_firmware_header_v1_0 *hdr =
			(const struct rlc_firmware_header_v1_0 *)rdev->rlc_fw->data;
		const __le32 *fw_data = (const __le32 *)
			(rdev->rlc_fw->data + FUNC9(hdr->header.ucode_array_offset_bytes));

		FUNC11(&hdr->header);

		size = FUNC9(hdr->header.ucode_size_bytes) / 4;
		FUNC1(RLC_GPM_UCODE_ADDR, 0);
		for (i = 0; i < size; i++)
			FUNC1(RLC_GPM_UCODE_DATA, FUNC10(fw_data++));
		FUNC1(RLC_GPM_UCODE_ADDR, FUNC9(hdr->header.ucode_version));
	} else {
		const __be32 *fw_data;

		switch (rdev->family) {
		case CHIP_BONAIRE:
		case CHIP_HAWAII:
		default:
			size = BONAIRE_RLC_UCODE_SIZE;
			break;
		case CHIP_KAVERI:
			size = KV_RLC_UCODE_SIZE;
			break;
		case CHIP_KABINI:
			size = KB_RLC_UCODE_SIZE;
			break;
		case CHIP_MULLINS:
			size = ML_RLC_UCODE_SIZE;
			break;
		}

		fw_data = (const __be32 *)rdev->rlc_fw->data;
		FUNC1(RLC_GPM_UCODE_ADDR, 0);
		for (i = 0; i < size; i++)
			FUNC1(RLC_GPM_UCODE_DATA, FUNC2(fw_data++));
		FUNC1(RLC_GPM_UCODE_ADDR, 0);
	}

	/* XXX - find out what chips support lbpw */
	FUNC3(rdev, false);

	if (rdev->family == CHIP_BONAIRE)
		FUNC1(RLC_DRIVER_DMA_STATUS, 0);

	FUNC6(rdev);

	return 0;
}