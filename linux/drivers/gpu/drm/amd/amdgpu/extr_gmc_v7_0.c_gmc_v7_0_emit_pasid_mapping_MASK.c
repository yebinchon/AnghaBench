#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*,unsigned int,unsigned int) ; 
 unsigned int mmIH_VMID_0_LUT ; 

__attribute__((used)) static void FUNC1(struct amdgpu_ring *ring, unsigned vmid,
					unsigned pasid)
{
	FUNC0(ring, mmIH_VMID_0_LUT + vmid, pasid);
}