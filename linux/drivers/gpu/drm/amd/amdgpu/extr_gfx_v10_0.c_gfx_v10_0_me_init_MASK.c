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
struct TYPE_3__ {int /*<<< orphan*/  queue_bitmap; } ;
struct TYPE_4__ {TYPE_1__ me; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_MAX_GFX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	int r;

	FUNC2(adev->gfx.me.queue_bitmap, AMDGPU_MAX_GFX_QUEUES);

	FUNC1(adev);

	r = FUNC3(adev);
	if (r)
		FUNC0("Failed to load gfx firmware!\n");

	return r;
}