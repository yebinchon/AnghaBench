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
struct drm_printer {int dummy; } ;
struct drm_gem_shmem_object {int /*<<< orphan*/  vaddr; int /*<<< orphan*/  vmap_use_count; int /*<<< orphan*/  pages_use_count; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,unsigned int,char*,int /*<<< orphan*/ ) ; 
 struct drm_gem_shmem_object* FUNC1 (struct drm_gem_object const*) ; 

void FUNC2(struct drm_printer *p, unsigned int indent,
			      const struct drm_gem_object *obj)
{
	const struct drm_gem_shmem_object *shmem = FUNC1(obj);

	FUNC0(p, indent, "pages_use_count=%u\n", shmem->pages_use_count);
	FUNC0(p, indent, "vmap_use_count=%u\n", shmem->vmap_use_count);
	FUNC0(p, indent, "vaddr=%p\n", shmem->vaddr);
}