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
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_JRBC_EXTERNAL_REG_BASE ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	FUNC2(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JRBC_EXTERNAL_REG_BASE), 0, 0, PACKETJ_TYPE0));
	FUNC2(ring, 0x68e04);

	FUNC2(ring, FUNC0(0, 0, 0, PACKETJ_TYPE0));
	FUNC2(ring, 0x80010000);
}