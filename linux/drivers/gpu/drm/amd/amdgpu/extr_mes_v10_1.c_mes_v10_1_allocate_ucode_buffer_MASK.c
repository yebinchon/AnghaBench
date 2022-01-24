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
struct mes_firmware_header_v1_0 {int /*<<< orphan*/  mes_ucode_size_bytes; int /*<<< orphan*/  mes_ucode_offset_bytes; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucode_fw_obj; int /*<<< orphan*/  ucode_fw_ptr; int /*<<< orphan*/  ucode_fw_gpu_addr; TYPE_1__* fw; } ;
struct amdgpu_device {TYPE_2__ mes; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev)
{
	int r;
	const struct mes_firmware_header_v1_0 *mes_hdr;
	const __le32 *fw_data;
	unsigned fw_size;

	mes_hdr = (const struct mes_firmware_header_v1_0 *)
		adev->mes.fw->data;

	fw_data = (const __le32 *)(adev->mes.fw->data +
		   FUNC4(mes_hdr->mes_ucode_offset_bytes));
	fw_size = FUNC4(mes_hdr->mes_ucode_size_bytes);

	r = FUNC0(adev, fw_size,
				      PAGE_SIZE, AMDGPU_GEM_DOMAIN_GTT,
				      &adev->mes.ucode_fw_obj,
				      &adev->mes.ucode_fw_gpu_addr,
				      (void **)&adev->mes.ucode_fw_ptr);
	if (r) {
		FUNC3(adev->dev, "(%d) failed to create mes fw bo\n", r);
		return r;
	}

	FUNC5(adev->mes.ucode_fw_ptr, fw_data, fw_size);

	FUNC1(adev->mes.ucode_fw_obj);
	FUNC2(adev->mes.ucode_fw_obj);

	return 0;
}