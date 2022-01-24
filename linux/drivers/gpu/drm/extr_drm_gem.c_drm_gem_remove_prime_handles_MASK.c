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
struct drm_gem_object {scalar_t__ dma_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct drm_file {TYPE_1__ prime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct drm_gem_object *obj, struct drm_file *filp)
{
	/*
	 * Note: obj->dma_buf can't disappear as long as we still hold a
	 * handle reference in obj->handle_count.
	 */
	FUNC1(&filp->prime.lock);
	if (obj->dma_buf) {
		FUNC0(&filp->prime,
						   obj->dma_buf);
	}
	FUNC2(&filp->prime.lock);
}