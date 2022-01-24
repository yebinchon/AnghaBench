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
struct drm_gem_object {struct drm_gem_object* dma_buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct drm_file {TYPE_2__ prime; } ;
struct drm_device {int /*<<< orphan*/  object_name_lock; TYPE_1__* driver; } ;
struct dma_buf {struct dma_buf* dma_buf; } ;
struct TYPE_4__ {struct drm_gem_object* (* gem_prime_import ) (struct drm_device*,struct drm_gem_object*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct drm_gem_object* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int FUNC5 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC8 (struct drm_device*,struct drm_gem_object*) ; 
 int FUNC9 (TYPE_2__*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC14 (struct drm_device*,struct drm_gem_object*) ; 

int FUNC15(struct drm_device *dev,
			       struct drm_file *file_priv, int prime_fd,
			       uint32_t *handle)
{
	struct dma_buf *dma_buf;
	struct drm_gem_object *obj;
	int ret;

	dma_buf = FUNC3(prime_fd);
	if (FUNC0(dma_buf))
		return FUNC1(dma_buf);

	FUNC12(&file_priv->prime.lock);

	ret = FUNC10(&file_priv->prime,
			dma_buf, handle);
	if (ret == 0)
		goto out_put;

	/* never seen this one, need to import */
	FUNC12(&dev->object_name_lock);
	if (dev->driver->gem_prime_import)
		obj = dev->driver->gem_prime_import(dev, dma_buf);
	else
		obj = FUNC8(dev, dma_buf);
	if (FUNC0(obj)) {
		ret = FUNC1(obj);
		goto out_unlock;
	}

	if (obj->dma_buf) {
		FUNC2(obj->dma_buf != dma_buf);
	} else {
		obj->dma_buf = dma_buf;
		FUNC11(dma_buf);
	}

	/* _handle_create_tail unconditionally unlocks dev->object_name_lock. */
	ret = FUNC5(file_priv, obj, handle);
	FUNC7(obj);
	if (ret)
		goto out_put;

	ret = FUNC9(&file_priv->prime,
			dma_buf, *handle);
	FUNC13(&file_priv->prime.lock);
	if (ret)
		goto fail;

	FUNC4(dma_buf);

	return 0;

fail:
	/* hmm, if driver attached, we are relying on the free-object path
	 * to detach.. which seems ok..
	 */
	FUNC6(file_priv, *handle);
	FUNC4(dma_buf);
	return ret;

out_unlock:
	FUNC13(&dev->object_name_lock);
out_put:
	FUNC13(&file_priv->prime.lock);
	FUNC4(dma_buf);
	return ret;
}