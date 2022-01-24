#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_vgpu_dmabuf_obj {int initref; int /*<<< orphan*/  kref; int /*<<< orphan*/  dmabuf_id; int /*<<< orphan*/  info; } ;
struct intel_vgpu {int /*<<< orphan*/  dmabuf_lock; int /*<<< orphan*/  id; TYPE_2__* gvt; } ;
struct TYPE_6__ {int /*<<< orphan*/  refcount; } ;
struct drm_i915_gem_object {TYPE_3__ base; int /*<<< orphan*/  gvt_info; } ;
struct drm_device {int dummy; } ;
struct dma_buf {int /*<<< orphan*/  file; } ;
struct TYPE_5__ {TYPE_1__* dev_priv; } ;
struct TYPE_4__ {struct drm_device drm; } ;

/* Variables and functions */
 int DRM_CLOEXEC ; 
 int DRM_RDWR ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dma_buf*) ; 
 int FUNC1 (struct dma_buf*) ; 
 int FUNC2 (struct dma_buf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu_dmabuf_obj*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_vgpu_dmabuf_obj*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_gem_object*) ; 
 struct dma_buf* FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct intel_vgpu_dmabuf_obj* FUNC14 (struct intel_vgpu*,unsigned int) ; 
 struct drm_i915_gem_object* FUNC15 (struct drm_device*,int /*<<< orphan*/ ) ; 

int FUNC16(struct intel_vgpu *vgpu, unsigned int dmabuf_id)
{
	struct drm_device *dev = &vgpu->gvt->dev_priv->drm;
	struct intel_vgpu_dmabuf_obj *dmabuf_obj;
	struct drm_i915_gem_object *obj;
	struct dma_buf *dmabuf;
	int dmabuf_fd;
	int ret = 0;

	FUNC12(&vgpu->dmabuf_lock);

	dmabuf_obj = FUNC14(vgpu, dmabuf_id);
	if (dmabuf_obj == NULL) {
		FUNC8("invalid dmabuf id:%d\n", dmabuf_id);
		ret = -EINVAL;
		goto out;
	}

	obj = FUNC15(dev, dmabuf_obj->info);
	if (obj == NULL) {
		FUNC8("create gvt gem obj failed\n");
		ret = -ENOMEM;
		goto out;
	}

	obj->gvt_info = dmabuf_obj->info;

	dmabuf = FUNC10(&obj->base, DRM_CLOEXEC | DRM_RDWR);
	if (FUNC0(dmabuf)) {
		FUNC8("export dma-buf failed\n");
		ret = FUNC1(dmabuf);
		goto out_free_gem;
	}

	FUNC9(obj);

	ret = FUNC2(dmabuf, DRM_CLOEXEC | DRM_RDWR);
	if (ret < 0) {
		FUNC8("create dma-buf fd failed ret:%d\n", ret);
		goto out_free_dmabuf;
	}
	dmabuf_fd = ret;

	FUNC4(dmabuf_obj);

	if (dmabuf_obj->initref) {
		dmabuf_obj->initref = false;
		FUNC5(dmabuf_obj);
	}

	FUNC13(&vgpu->dmabuf_lock);

	FUNC7("vgpu%d: dmabuf:%d, dmabuf ref %d, fd:%d\n"
		    "        file count: %ld, GEM ref: %d\n",
		    vgpu->id, dmabuf_obj->dmabuf_id,
		    FUNC11(&dmabuf_obj->kref),
		    dmabuf_fd,
		    FUNC6(dmabuf->file),
		    FUNC11(&obj->base.refcount));

	return dmabuf_fd;

out_free_dmabuf:
	FUNC3(dmabuf);
out_free_gem:
	FUNC9(obj);
out:
	FUNC13(&vgpu->dmabuf_lock);
	return ret;
}