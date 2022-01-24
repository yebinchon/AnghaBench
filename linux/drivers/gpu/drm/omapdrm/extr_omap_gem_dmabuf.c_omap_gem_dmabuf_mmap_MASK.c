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
struct vm_area_struct {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_object*,int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int FUNC1 (struct drm_gem_object*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC3(struct dma_buf *buffer,
		struct vm_area_struct *vma)
{
	struct drm_gem_object *obj = buffer->priv;
	int ret = 0;

	ret = FUNC0(obj, FUNC2(obj), vma);
	if (ret < 0)
		return ret;

	return FUNC1(obj, vma);
}