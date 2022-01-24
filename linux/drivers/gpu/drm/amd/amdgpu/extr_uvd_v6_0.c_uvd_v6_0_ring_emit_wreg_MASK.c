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
typedef  int uint32_t ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_CMD ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA0 ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA1 ; 

__attribute__((used)) static void FUNC2(struct amdgpu_ring *ring,
				    uint32_t reg, uint32_t val)
{
	FUNC1(ring, FUNC0(mmUVD_GPCOM_VCPU_DATA0, 0));
	FUNC1(ring, reg << 2);
	FUNC1(ring, FUNC0(mmUVD_GPCOM_VCPU_DATA1, 0));
	FUNC1(ring, val);
	FUNC1(ring, FUNC0(mmUVD_GPCOM_VCPU_CMD, 0));
	FUNC1(ring, 0x8);
}