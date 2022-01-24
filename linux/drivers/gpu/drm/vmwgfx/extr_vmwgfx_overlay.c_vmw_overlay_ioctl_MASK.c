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
struct vmw_resource {int dummy; } ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int /*<<< orphan*/  mutex; } ;
struct vmw_buffer_object {int dummy; } ;
struct ttm_object_file {int dummy; } ;
struct drm_vmw_control_stream_arg {int /*<<< orphan*/  handle; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  enabled; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_buffer_object**) ; 
 TYPE_1__* FUNC3 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*) ; 
 int FUNC5 (struct vmw_private*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct vmw_private*,struct vmw_buffer_object*,struct drm_vmw_control_stream_arg*,int) ; 
 struct vmw_private* FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_resource**) ; 
 int FUNC9 (struct ttm_object_file*,int /*<<< orphan*/ ,struct vmw_buffer_object**,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct vmw_private*,struct ttm_object_file*,int /*<<< orphan*/ *,struct vmw_resource**) ; 

int FUNC11(struct drm_device *dev, void *data,
		      struct drm_file *file_priv)
{
	struct ttm_object_file *tfile = FUNC3(file_priv)->tfile;
	struct vmw_private *dev_priv = FUNC7(dev);
	struct vmw_overlay *overlay = dev_priv->overlay_priv;
	struct drm_vmw_control_stream_arg *arg =
	    (struct drm_vmw_control_stream_arg *)data;
	struct vmw_buffer_object *buf;
	struct vmw_resource *res;
	int ret;

	if (!FUNC4(dev_priv))
		return -ENOSYS;

	ret = FUNC10(dev_priv, tfile, &arg->stream_id, &res);
	if (ret)
		return ret;

	FUNC0(&overlay->mutex);

	if (!arg->enabled) {
		ret = FUNC5(dev_priv, arg->stream_id, false, true);
		goto out_unlock;
	}

	ret = FUNC9(tfile, arg->handle, &buf, NULL);
	if (ret)
		goto out_unlock;

	ret = FUNC6(dev_priv, buf, arg, true);

	FUNC2(&buf);

out_unlock:
	FUNC1(&overlay->mutex);
	FUNC8(&res);

	return ret;
}