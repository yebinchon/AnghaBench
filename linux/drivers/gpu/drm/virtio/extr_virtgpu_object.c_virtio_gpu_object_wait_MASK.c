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
struct virtio_gpu_object {int /*<<< orphan*/  tbo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct virtio_gpu_object *bo, bool no_wait)
{
	int r;

	r = FUNC0(&bo->tbo, true, no_wait, NULL);
	if (FUNC3(r != 0))
		return r;
	r = FUNC2(&bo->tbo, true, no_wait);
	FUNC1(&bo->tbo);
	return r;
}