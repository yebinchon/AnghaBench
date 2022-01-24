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
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  ctxlist_mutex; int /*<<< orphan*/  ctxlist; } ;
struct drm_ctx_list {int handle; int /*<<< orphan*/  head; struct drm_file* tag; } ;
struct drm_ctx {int handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_KMS_LEGACY_CONTEXT ; 
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DRM_KERNEL_CONTEXT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_device*) ; 
 struct drm_ctx_list* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct drm_device *dev, void *data,
		      struct drm_file *file_priv)
{
	struct drm_ctx_list *ctx_entry;
	struct drm_ctx *ctx = data;
	int tmp_handle;

	if (!FUNC2(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
	    !FUNC2(dev, DRIVER_LEGACY))
		return -EOPNOTSUPP;

	tmp_handle = FUNC3(dev);
	if (tmp_handle == DRM_KERNEL_CONTEXT) {
		/* Skip kernel's context and get a new one. */
		tmp_handle = FUNC3(dev);
	}
	FUNC0("%d\n", tmp_handle);
	if (tmp_handle < 0) {
		FUNC0("Not enough free contexts.\n");
		/* Should this return -EBUSY instead? */
		return tmp_handle;
	}

	ctx->handle = tmp_handle;

	ctx_entry = FUNC4(sizeof(*ctx_entry), GFP_KERNEL);
	if (!ctx_entry) {
		FUNC0("out of memory\n");
		return -ENOMEM;
	}

	FUNC1(&ctx_entry->head);
	ctx_entry->handle = ctx->handle;
	ctx_entry->tag = file_priv;

	FUNC6(&dev->ctxlist_mutex);
	FUNC5(&ctx_entry->head, &dev->ctxlist);
	FUNC7(&dev->ctxlist_mutex);

	return 0;
}