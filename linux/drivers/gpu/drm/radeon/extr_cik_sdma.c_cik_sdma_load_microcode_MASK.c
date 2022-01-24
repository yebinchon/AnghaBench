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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct sdma_firmware_header_v1_0 {TYPE_2__ header; } ;
struct radeon_device {TYPE_1__* sdma_fw; scalar_t__ new_fw; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int CIK_SDMA_UCODE_SIZE ; 
 int /*<<< orphan*/  CIK_SDMA_UCODE_VERSION ; 
 int EINVAL ; 
 scalar_t__ SDMA0_REGISTER_OFFSET ; 
 scalar_t__ SDMA0_UCODE_ADDR ; 
 scalar_t__ SDMA0_UCODE_DATA ; 
 scalar_t__ SDMA1_REGISTER_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev)
{
	int i;

	if (!rdev->sdma_fw)
		return -EINVAL;

	/* halt the MEs */
	FUNC2(rdev, false);

	if (rdev->new_fw) {
		const struct sdma_firmware_header_v1_0 *hdr =
			(const struct sdma_firmware_header_v1_0 *)rdev->sdma_fw->data;
		const __le32 *fw_data;
		u32 fw_size;

		FUNC5(&hdr->header);

		/* sdma0 */
		fw_data = (const __le32 *)
			(rdev->sdma_fw->data + FUNC3(hdr->header.ucode_array_offset_bytes));
		fw_size = FUNC3(hdr->header.ucode_size_bytes) / 4;
		FUNC0(SDMA0_UCODE_ADDR + SDMA0_REGISTER_OFFSET, 0);
		for (i = 0; i < fw_size; i++)
			FUNC0(SDMA0_UCODE_DATA + SDMA0_REGISTER_OFFSET, FUNC4(fw_data++));
		FUNC0(SDMA0_UCODE_DATA + SDMA0_REGISTER_OFFSET, CIK_SDMA_UCODE_VERSION);

		/* sdma1 */
		fw_data = (const __le32 *)
			(rdev->sdma_fw->data + FUNC3(hdr->header.ucode_array_offset_bytes));
		fw_size = FUNC3(hdr->header.ucode_size_bytes) / 4;
		FUNC0(SDMA0_UCODE_ADDR + SDMA1_REGISTER_OFFSET, 0);
		for (i = 0; i < fw_size; i++)
			FUNC0(SDMA0_UCODE_DATA + SDMA1_REGISTER_OFFSET, FUNC4(fw_data++));
		FUNC0(SDMA0_UCODE_DATA + SDMA1_REGISTER_OFFSET, CIK_SDMA_UCODE_VERSION);
	} else {
		const __be32 *fw_data;

		/* sdma0 */
		fw_data = (const __be32 *)rdev->sdma_fw->data;
		FUNC0(SDMA0_UCODE_ADDR + SDMA0_REGISTER_OFFSET, 0);
		for (i = 0; i < CIK_SDMA_UCODE_SIZE; i++)
			FUNC0(SDMA0_UCODE_DATA + SDMA0_REGISTER_OFFSET, FUNC1(fw_data++));
		FUNC0(SDMA0_UCODE_DATA + SDMA0_REGISTER_OFFSET, CIK_SDMA_UCODE_VERSION);

		/* sdma1 */
		fw_data = (const __be32 *)rdev->sdma_fw->data;
		FUNC0(SDMA0_UCODE_ADDR + SDMA1_REGISTER_OFFSET, 0);
		for (i = 0; i < CIK_SDMA_UCODE_SIZE; i++)
			FUNC0(SDMA0_UCODE_DATA + SDMA1_REGISTER_OFFSET, FUNC1(fw_data++));
		FUNC0(SDMA0_UCODE_DATA + SDMA1_REGISTER_OFFSET, CIK_SDMA_UCODE_VERSION);
	}

	FUNC0(SDMA0_UCODE_ADDR + SDMA0_REGISTER_OFFSET, 0);
	FUNC0(SDMA0_UCODE_ADDR + SDMA1_REGISTER_OFFSET, 0);
	return 0;
}