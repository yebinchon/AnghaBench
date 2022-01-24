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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int gb_addr_config; } ;
struct TYPE_8__ {TYPE_3__ config; } ;
struct TYPE_6__ {int max_handles; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__ uvd; } ;
struct TYPE_5__ {int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 int AMDGPU_UVD_FIRMWARE_OFFSET ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int AMDGPU_UVD_HEAP_SIZE ; 
 int AMDGPU_UVD_SESSION_SIZE ; 
 int AMDGPU_UVD_STACK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_UDEC_ADDR_CONFIG ; 
 int /*<<< orphan*/  mmUVD_UDEC_DBW_ADDR_CONFIG ; 
 int /*<<< orphan*/  mmUVD_UDEC_DB_ADDR_CONFIG ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET0 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET1 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET2 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE0 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE1 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE2 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	uint64_t offset;
	uint32_t size;

	/* programm memory controller bits 0-27 */
	FUNC1(mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW,
			FUNC2(adev->uvd.inst->gpu_addr));
	FUNC1(mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH,
			FUNC3(adev->uvd.inst->gpu_addr));

	offset = AMDGPU_UVD_FIRMWARE_OFFSET;
	size = FUNC0(adev);
	FUNC1(mmUVD_VCPU_CACHE_OFFSET0, offset >> 3);
	FUNC1(mmUVD_VCPU_CACHE_SIZE0, size);

	offset += size;
	size = AMDGPU_UVD_HEAP_SIZE;
	FUNC1(mmUVD_VCPU_CACHE_OFFSET1, offset >> 3);
	FUNC1(mmUVD_VCPU_CACHE_SIZE1, size);

	offset += size;
	size = AMDGPU_UVD_STACK_SIZE +
	       (AMDGPU_UVD_SESSION_SIZE * adev->uvd.max_handles);
	FUNC1(mmUVD_VCPU_CACHE_OFFSET2, offset >> 3);
	FUNC1(mmUVD_VCPU_CACHE_SIZE2, size);

	FUNC1(mmUVD_UDEC_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
	FUNC1(mmUVD_UDEC_DB_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
	FUNC1(mmUVD_UDEC_DBW_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
}