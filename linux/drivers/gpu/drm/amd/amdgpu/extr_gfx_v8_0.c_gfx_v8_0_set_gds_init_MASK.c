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
struct TYPE_2__ {int gws_size; int oa_size; void* gds_compute_max_wave_id; void* gds_size; } ;
struct amdgpu_device {TYPE_1__ gds; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGDS_COMPUTE_MAX_WAVE_ID ; 
 int /*<<< orphan*/  mmGDS_VMID0_SIZE ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev)
{
	/* init asci gds info */
	adev->gds.gds_size = FUNC0(mmGDS_VMID0_SIZE);
	adev->gds.gws_size = 64;
	adev->gds.oa_size = 16;
	adev->gds.gds_compute_max_wave_id = FUNC0(mmGDS_COMPUTE_MAX_WAVE_ID);
}