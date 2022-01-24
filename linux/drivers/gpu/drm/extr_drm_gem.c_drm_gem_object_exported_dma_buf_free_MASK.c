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
struct drm_gem_object {int /*<<< orphan*/ * dma_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct drm_gem_object *obj)
{
	/* Unbreak the reference cycle if we have an exported dma_buf. */
	if (obj->dma_buf) {
		FUNC0(obj->dma_buf);
		obj->dma_buf = NULL;
	}
}