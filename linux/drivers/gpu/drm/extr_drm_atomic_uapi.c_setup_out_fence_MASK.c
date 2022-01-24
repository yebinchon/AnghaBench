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
struct drm_out_fence_state {scalar_t__ fd; int /*<<< orphan*/  sync_file; int /*<<< orphan*/  out_fence_ptr; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 

__attribute__((used)) static int FUNC3(struct drm_out_fence_state *fence_state,
			   struct dma_fence *fence)
{
	fence_state->fd = FUNC0(O_CLOEXEC);
	if (fence_state->fd < 0)
		return fence_state->fd;

	if (FUNC1(fence_state->fd, fence_state->out_fence_ptr))
		return -EFAULT;

	fence_state->sync_file = FUNC2(fence);
	if (!fence_state->sync_file)
		return -ENOMEM;

	return 0;
}