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
struct nouveau_bo {int /*<<< orphan*/  dma_buf_vmap; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 struct nouveau_bo* FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct drm_gem_object *obj, void *vaddr)
{
	struct nouveau_bo *nvbo = FUNC0(obj);

	FUNC1(&nvbo->dma_buf_vmap);
}