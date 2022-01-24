#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct virtio_gpu_fence_driver {int /*<<< orphan*/  lock; int /*<<< orphan*/  fences; scalar_t__ sync_seq; } ;
struct TYPE_3__ {scalar_t__ seqno; } ;
struct virtio_gpu_fence {TYPE_1__ f; int /*<<< orphan*/  node; } ;
struct virtio_gpu_device {struct virtio_gpu_fence_driver fence_drv; } ;
struct virtio_gpu_ctrl_hdr {int /*<<< orphan*/  fence_id; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_GPU_FLAG_FENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(struct virtio_gpu_device *vgdev,
			  struct virtio_gpu_ctrl_hdr *cmd_hdr,
			  struct virtio_gpu_fence *fence)
{
	struct virtio_gpu_fence_driver *drv = &vgdev->fence_drv;
	unsigned long irq_flags;

	FUNC4(&drv->lock, irq_flags);
	fence->f.seqno = ++drv->sync_seq;
	FUNC2(&fence->f);
	FUNC3(&fence->node, &drv->fences);
	FUNC5(&drv->lock, irq_flags);

	FUNC6(&fence->f);

	cmd_hdr->flags |= FUNC0(VIRTIO_GPU_FLAG_FENCE);
	cmd_hdr->fence_id = FUNC1(fence->f.seqno);
}