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
struct TYPE_2__ {int num_gfx_rings; int num_compute_rings; int /*<<< orphan*/ * compute_ring; int /*<<< orphan*/ * gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void *handle)
{
	int i;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	for (i = 0; i < adev->gfx.num_gfx_rings; i++)
		FUNC1(&adev->gfx.gfx_ring[i]);
	for (i = 0; i < adev->gfx.num_compute_rings; i++)
		FUNC1(&adev->gfx.compute_ring[i]);

	FUNC0(adev);

	return 0;
}