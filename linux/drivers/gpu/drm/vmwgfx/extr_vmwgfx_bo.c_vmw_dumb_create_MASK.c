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
struct vmw_private {int /*<<< orphan*/  reservation_sem; } ;
struct vmw_buffer_object {int dummy; } ;
struct drm_mode_create_dumb {int pitch; int width; int bpp; int size; int height; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfile; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_buffer_object**) ; 
 TYPE_1__* FUNC4 (struct drm_file*) ; 
 struct vmw_private* FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct vmw_private*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,struct vmw_buffer_object**,int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_file *file_priv,
		    struct drm_device *dev,
		    struct drm_mode_create_dumb *args)
{
	struct vmw_private *dev_priv = FUNC5(dev);
	struct vmw_buffer_object *vbo;
	int ret;

	args->pitch = args->width * ((args->bpp + 7) / 8);
	args->size = args->pitch * args->height;

	ret = FUNC0(&dev_priv->reservation_sem, true);
	if (FUNC2(ret != 0))
		return ret;

	ret = FUNC6(dev_priv, FUNC4(file_priv)->tfile,
				    args->size, false, &args->handle,
				    &vbo, NULL);
	if (FUNC2(ret != 0))
		goto out_no_bo;

	FUNC3(&vbo);
out_no_bo:
	FUNC1(&dev_priv->reservation_sem);
	return ret;
}