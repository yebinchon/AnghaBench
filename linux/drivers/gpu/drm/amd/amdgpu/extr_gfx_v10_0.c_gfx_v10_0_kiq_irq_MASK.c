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
typedef  int u8 ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_iv_entry {int ring_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;
struct TYPE_4__ {TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev,
			     struct amdgpu_irq_src *source,
			     struct amdgpu_iv_entry *entry)
{
	u8 me_id, pipe_id, queue_id;
	struct amdgpu_ring *ring = &(adev->gfx.kiq.ring);

	me_id = (entry->ring_id & 0x0c) >> 2;
	pipe_id = (entry->ring_id & 0x03) >> 0;
	queue_id = (entry->ring_id & 0x70) >> 4;
	FUNC0("IH: CPC GENERIC2_INT, me:%d, pipe:%d, queue:%d\n",
		   me_id, pipe_id, queue_id);

	FUNC1(ring);
	return 0;
}