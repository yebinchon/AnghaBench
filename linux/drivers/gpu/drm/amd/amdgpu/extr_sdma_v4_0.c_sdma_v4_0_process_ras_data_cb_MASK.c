#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ras_err_data {int dummy; } ;
struct amdgpu_iv_entry {int src_id; int /*<<< orphan*/  client_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct amdgpu_device {TYPE_1__ kfd; } ;

/* Variables and functions */
 int AMDGPU_RAS_SUCCESS ; 
#define  SDMA0_4_0__SRCID__SDMA_ECC 129 
#define  SDMA0_4_0__SRCID__SDMA_SRAM_ECC 128 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
		struct ras_err_data *err_data,
		struct amdgpu_iv_entry *entry)
{
	uint32_t err_source;
	int instance;

	instance = FUNC2(entry->client_id);
	if (instance < 0)
		return 0;

	switch (entry->src_id) {
	case SDMA0_4_0__SRCID__SDMA_SRAM_ECC:
		err_source = 0;
		break;
	case SDMA0_4_0__SRCID__SDMA_ECC:
		err_source = 1;
		break;
	default:
		return 0;
	}

	FUNC1(adev->kfd.dev);

	FUNC0(adev, 0);

	return AMDGPU_RAS_SUCCESS;
}