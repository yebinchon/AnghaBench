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
typedef  size_t uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_2__ {int mem_base; int mem_size; int gws; int oa; } ;

/* Variables and functions */
 size_t GDS_GWS_VMID0__SIZE__SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* amdgpu_gds_reg_offset ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring,
					  uint32_t vmid,
					  uint32_t gds_base, uint32_t gds_size,
					  uint32_t gws_base, uint32_t gws_size,
					  uint32_t oa_base, uint32_t oa_size)
{
	/* GDS Base */
	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, (FUNC2(0) |
				FUNC1(0)));
	FUNC3(ring, amdgpu_gds_reg_offset[vmid].mem_base);
	FUNC3(ring, 0);
	FUNC3(ring, gds_base);

	/* GDS Size */
	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, (FUNC2(0) |
				FUNC1(0)));
	FUNC3(ring, amdgpu_gds_reg_offset[vmid].mem_size);
	FUNC3(ring, 0);
	FUNC3(ring, gds_size);

	/* GWS */
	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, (FUNC2(0) |
				FUNC1(0)));
	FUNC3(ring, amdgpu_gds_reg_offset[vmid].gws);
	FUNC3(ring, 0);
	FUNC3(ring, gws_size << GDS_GWS_VMID0__SIZE__SHIFT | gws_base);

	/* OA */
	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, (FUNC2(0) |
				FUNC1(0)));
	FUNC3(ring, amdgpu_gds_reg_offset[vmid].oa);
	FUNC3(ring, 0);
	FUNC3(ring, (1 << (oa_size + oa_base)) - (1 << oa_base));
}