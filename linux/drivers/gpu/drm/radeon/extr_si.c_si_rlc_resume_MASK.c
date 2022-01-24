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
struct TYPE_4__ {int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_size_bytes; } ;
struct rlc_firmware_header_v1_0 {TYPE_2__ header; } ;
struct radeon_device {TYPE_1__* rlc_fw; scalar_t__ new_fw; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RLC_LB_CNTL ; 
 int /*<<< orphan*/  RLC_LB_CNTR_INIT ; 
 int /*<<< orphan*/  RLC_LB_CNTR_MAX ; 
 int /*<<< orphan*/  RLC_LB_INIT_CU_MASK ; 
 int /*<<< orphan*/  RLC_MC_CNTL ; 
 int /*<<< orphan*/  RLC_RL_BASE ; 
 int /*<<< orphan*/  RLC_RL_SIZE ; 
 int /*<<< orphan*/  RLC_UCODE_ADDR ; 
 int /*<<< orphan*/  RLC_UCODE_CNTL ; 
 int /*<<< orphan*/  RLC_UCODE_DATA ; 
 scalar_t__ SI_RLC_UCODE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC12(struct radeon_device *rdev)
{
	u32 i;

	if (!rdev->rlc_fw)
		return -EINVAL;

	FUNC11(rdev);

	FUNC9(rdev);

	FUNC7(rdev);

	FUNC6(rdev);

	FUNC0(RLC_RL_BASE, 0);
	FUNC0(RLC_RL_SIZE, 0);
	FUNC0(RLC_LB_CNTL, 0);
	FUNC0(RLC_LB_CNTR_MAX, 0xffffffff);
	FUNC0(RLC_LB_CNTR_INIT, 0);
	FUNC0(RLC_LB_INIT_CU_MASK, 0xffffffff);

	FUNC0(RLC_MC_CNTL, 0);
	FUNC0(RLC_UCODE_CNTL, 0);

	if (rdev->new_fw) {
		const struct rlc_firmware_header_v1_0 *hdr =
			(const struct rlc_firmware_header_v1_0 *)rdev->rlc_fw->data;
		u32 fw_size = FUNC2(hdr->header.ucode_size_bytes) / 4;
		const __le32 *fw_data = (const __le32 *)
			(rdev->rlc_fw->data + FUNC2(hdr->header.ucode_array_offset_bytes));

		FUNC4(&hdr->header);

		for (i = 0; i < fw_size; i++) {
			FUNC0(RLC_UCODE_ADDR, i);
			FUNC0(RLC_UCODE_DATA, FUNC3(fw_data++));
		}
	} else {
		const __be32 *fw_data =
			(const __be32 *)rdev->rlc_fw->data;
		for (i = 0; i < SI_RLC_UCODE_SIZE; i++) {
			FUNC0(RLC_UCODE_ADDR, i);
			FUNC0(RLC_UCODE_DATA, FUNC1(fw_data++));
		}
	}
	FUNC0(RLC_UCODE_ADDR, 0);

	FUNC5(rdev, FUNC8(rdev));

	FUNC10(rdev);

	return 0;
}