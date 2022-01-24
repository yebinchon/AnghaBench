#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_property_blob {int /*<<< orphan*/  head_file; TYPE_1__ base; int /*<<< orphan*/  data; } ;
struct drm_mode_create_blob {int /*<<< orphan*/  blob_id; int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct drm_file {int /*<<< orphan*/  blobs; } ;
struct TYPE_4__ {int /*<<< orphan*/  blob_lock; } ;
struct drm_device {TYPE_2__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int EFAULT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct drm_property_blob*) ; 
 int FUNC1 (struct drm_property_blob*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_property_blob*) ; 
 struct drm_property_blob* FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct drm_device *dev,
			      void *data, struct drm_file *file_priv)
{
	struct drm_mode_create_blob *out_resp = data;
	struct drm_property_blob *blob;
	int ret = 0;

	if (!FUNC3(dev, DRIVER_MODESET))
		return -EOPNOTSUPP;

	blob = FUNC5(dev, out_resp->length, NULL);
	if (FUNC0(blob))
		return FUNC1(blob);

	if (FUNC2(blob->data,
			   FUNC9(out_resp->data),
			   out_resp->length)) {
		ret = -EFAULT;
		goto out_blob;
	}

	/* Dropping the lock between create_blob and our access here is safe
	 * as only the same file_priv can remove the blob; at this point, it is
	 * not associated with any file_priv. */
	FUNC7(&dev->mode_config.blob_lock);
	out_resp->blob_id = blob->base.id;
	FUNC6(&blob->head_file, &file_priv->blobs);
	FUNC8(&dev->mode_config.blob_lock);

	return 0;

out_blob:
	FUNC4(blob);
	return ret;
}