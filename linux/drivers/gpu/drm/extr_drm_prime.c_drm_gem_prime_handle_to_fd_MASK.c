#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_object {struct dma_buf* dma_buf; TYPE_1__* import_attach; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct drm_file {TYPE_2__ prime; } ;
struct drm_device {int /*<<< orphan*/  object_name_lock; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {struct dma_buf* dmabuf; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dma_buf*) ; 
 int FUNC1 (struct dma_buf*) ; 
 int FUNC2 (struct dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_buf*) ; 
 struct drm_gem_object* FUNC4 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int FUNC6 (TYPE_2__*,struct dma_buf*,int /*<<< orphan*/ ) ; 
 struct dma_buf* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct dma_buf* FUNC8 (struct drm_device*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct drm_device *dev,
			       struct drm_file *file_priv, uint32_t handle,
			       uint32_t flags,
			       int *prime_fd)
{
	struct drm_gem_object *obj;
	int ret = 0;
	struct dma_buf *dmabuf;

	FUNC10(&file_priv->prime.lock);
	obj = FUNC4(file_priv, handle);
	if (!obj)  {
		ret = -ENOENT;
		goto out_unlock;
	}

	dmabuf = FUNC7(&file_priv->prime, handle);
	if (dmabuf) {
		FUNC9(dmabuf);
		goto out_have_handle;
	}

	FUNC10(&dev->object_name_lock);
	/* re-export the original imported object */
	if (obj->import_attach) {
		dmabuf = obj->import_attach->dmabuf;
		FUNC9(dmabuf);
		goto out_have_obj;
	}

	if (obj->dma_buf) {
		FUNC9(obj->dma_buf);
		dmabuf = obj->dma_buf;
		goto out_have_obj;
	}

	dmabuf = FUNC8(dev, obj, flags);
	if (FUNC0(dmabuf)) {
		/* normally the created dma-buf takes ownership of the ref,
		 * but if that fails then drop the ref
		 */
		ret = FUNC1(dmabuf);
		FUNC11(&dev->object_name_lock);
		goto out;
	}

out_have_obj:
	/*
	 * If we've exported this buffer then cheat and add it to the import list
	 * so we get the correct handle back. We must do this under the
	 * protection of dev->object_name_lock to ensure that a racing gem close
	 * ioctl doesn't miss to remove this buffer handle from the cache.
	 */
	ret = FUNC6(&file_priv->prime,
				       dmabuf, handle);
	FUNC11(&dev->object_name_lock);
	if (ret)
		goto fail_put_dmabuf;

out_have_handle:
	ret = FUNC2(dmabuf, flags);
	/*
	 * We must _not_ remove the buffer from the handle cache since the newly
	 * created dma buf is already linked in the global obj->dma_buf pointer,
	 * and that is invariant as long as a userspace gem handle exists.
	 * Closing the handle will clean out the cache anyway, so we don't leak.
	 */
	if (ret < 0) {
		goto fail_put_dmabuf;
	} else {
		*prime_fd = ret;
		ret = 0;
	}

	goto out;

fail_put_dmabuf:
	FUNC3(dmabuf);
out:
	FUNC5(obj);
out_unlock:
	FUNC11(&file_priv->prime.lock);

	return ret;
}