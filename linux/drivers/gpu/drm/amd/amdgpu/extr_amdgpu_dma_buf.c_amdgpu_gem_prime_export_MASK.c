#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_gem_object {TYPE_1__* dev; } ;
struct dma_buf {int /*<<< orphan*/ * ops; TYPE_3__* file; } ;
struct TYPE_6__ {int /*<<< orphan*/  ttm; } ;
struct amdgpu_bo {int flags; TYPE_2__ tbo; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_7__ {int /*<<< orphan*/  f_mapping; } ;
struct TYPE_5__ {TYPE_4__* anon_inode; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_VM_ALWAYS_VALID ; 
 int /*<<< orphan*/  EPERM ; 
 struct dma_buf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_buf*) ; 
 int /*<<< orphan*/  amdgpu_dmabuf_ops ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_buf* FUNC3 (struct drm_gem_object*,int) ; 
 struct amdgpu_bo* FUNC4 (struct drm_gem_object*) ; 

struct dma_buf *FUNC5(struct drm_gem_object *gobj,
					int flags)
{
	struct amdgpu_bo *bo = FUNC4(gobj);
	struct dma_buf *buf;

	if (FUNC2(bo->tbo.ttm) ||
	    bo->flags & AMDGPU_GEM_CREATE_VM_ALWAYS_VALID)
		return FUNC0(-EPERM);

	buf = FUNC3(gobj, flags);
	if (!FUNC1(buf)) {
		buf->file->f_mapping = gobj->dev->anon_inode->i_mapping;
		buf->ops = &amdgpu_dmabuf_ops;
	}

	return buf;
}