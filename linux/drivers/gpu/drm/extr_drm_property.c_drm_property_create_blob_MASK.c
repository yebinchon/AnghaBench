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
struct drm_property_blob {size_t length; int /*<<< orphan*/  head_global; int /*<<< orphan*/  base; void* data; struct drm_device* dev; int /*<<< orphan*/  head_file; } ;
struct TYPE_2__ {int /*<<< orphan*/  blob_lock; int /*<<< orphan*/  property_blob_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_BLOB ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_property_blob* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ULONG_MAX ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_property_free_blob ; 
 int /*<<< orphan*/  FUNC3 (struct drm_property_blob*) ; 
 struct drm_property_blob* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct drm_property_blob *
FUNC9(struct drm_device *dev, size_t length,
			 const void *data)
{
	struct drm_property_blob *blob;
	int ret;

	if (!length || length > ULONG_MAX - sizeof(struct drm_property_blob))
		return FUNC0(-EINVAL);

	blob = FUNC4(sizeof(struct drm_property_blob)+length, GFP_KERNEL);
	if (!blob)
		return FUNC0(-ENOMEM);

	/* This must be explicitly initialised, so we can safely call list_del
	 * on it in the removal handler, even if it isn't in a file list. */
	FUNC1(&blob->head_file);
	blob->data = (void *)blob + sizeof(*blob);
	blob->length = length;
	blob->dev = dev;

	if (data)
		FUNC6(blob->data, data, length);

	ret = FUNC2(dev, &blob->base, DRM_MODE_OBJECT_BLOB,
				    true, drm_property_free_blob);
	if (ret) {
		FUNC3(blob);
		return FUNC0(-EINVAL);
	}

	FUNC7(&dev->mode_config.blob_lock);
	FUNC5(&blob->head_global,
	              &dev->mode_config.property_blob_list);
	FUNC8(&dev->mode_config.blob_lock);

	return blob;
}