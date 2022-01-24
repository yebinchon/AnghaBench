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
struct amdgpu_ring {int wptr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_NO_OP ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring, uint32_t count)
{
	struct amdgpu_device *adev = ring->adev;
	int i;

	FUNC2(ring->wptr % 2 || count % 2);

	for (i = 0; i < count / 2; i++) {
		FUNC3(ring, FUNC0(FUNC1(UVD, 0, mmUVD_NO_OP), 0));
		FUNC3(ring, 0);
	}
}