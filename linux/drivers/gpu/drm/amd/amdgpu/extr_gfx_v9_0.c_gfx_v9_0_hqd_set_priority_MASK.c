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
struct amdgpu_ring {int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmCP_HQD_PIPE_PRIORITY ; 
 int /*<<< orphan*/  mmCP_HQD_QUEUE_PRIORITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
				      struct amdgpu_ring *ring,
				      bool acquire)
{
	uint32_t pipe_priority = acquire ? 0x2 : 0x0;
	uint32_t queue_priority = acquire ? 0xf : 0x0;

	FUNC1(&adev->srbm_mutex);
	FUNC3(adev, ring->me, ring->pipe, ring->queue, 0);

	FUNC0(GC, 0, mmCP_HQD_PIPE_PRIORITY, pipe_priority);
	FUNC0(GC, 0, mmCP_HQD_QUEUE_PRIORITY, queue_priority);

	FUNC3(adev, 0, 0, 0, 0);
	FUNC2(&adev->srbm_mutex);
}