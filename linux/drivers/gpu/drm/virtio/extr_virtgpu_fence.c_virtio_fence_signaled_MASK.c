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
struct TYPE_4__ {scalar_t__ seqno; } ;
struct virtio_gpu_fence {TYPE_2__ f; TYPE_1__* drv; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  last_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct virtio_gpu_fence* FUNC1 (struct dma_fence*) ; 

bool FUNC2(struct dma_fence *f)
{
	struct virtio_gpu_fence *fence = FUNC1(f);

	if (FUNC0(&fence->drv->last_seq) >= fence->f.seqno)
		return true;
	return false;
}