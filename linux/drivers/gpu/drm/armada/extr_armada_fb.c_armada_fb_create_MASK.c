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
struct drm_mode_fb_cmd2 {scalar_t__* handles; int /*<<< orphan*/ * pitches; int /*<<< orphan*/  flags; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_format_info {int num_planes; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ import_attach; } ;
struct armada_gem_object {TYPE_1__ obj; int /*<<< orphan*/  mapped; int /*<<< orphan*/  sgt; } ;
struct armada_framebuffer {struct drm_framebuffer fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct drm_framebuffer* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct armada_framebuffer*) ; 
 int FUNC4 (struct armada_framebuffer*) ; 
 struct armada_framebuffer* FUNC5 (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct armada_gem_object*) ; 
 int FUNC6 (struct armada_gem_object*) ; 
 struct armada_gem_object* FUNC7 (struct drm_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 struct drm_format_info* FUNC9 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 

struct drm_framebuffer *FUNC10(struct drm_device *dev,
	struct drm_file *dfile, const struct drm_mode_fb_cmd2 *mode)
{
	const struct drm_format_info *info = FUNC9(dev, mode);
	struct armada_gem_object *obj;
	struct armada_framebuffer *dfb;
	int ret;

	FUNC0("w%u h%u pf%08x f%u p%u,%u,%u\n",
		mode->width, mode->height, mode->pixel_format,
		mode->flags, mode->pitches[0], mode->pitches[1],
		mode->pitches[2]);

	/* We can only handle a single plane at the moment */
	if (info->num_planes > 1 &&
	    (mode->handles[0] != mode->handles[1] ||
	     mode->handles[0] != mode->handles[2])) {
		ret = -EINVAL;
		goto err;
	}

	obj = FUNC7(dfile, mode->handles[0]);
	if (!obj) {
		ret = -ENOENT;
		goto err;
	}

	if (obj->obj.import_attach && !obj->sgt) {
		ret = FUNC6(obj);
		if (ret)
			goto err_unref;
	}

	/* Framebuffer objects must have a valid device address for scanout */
	if (!obj->mapped) {
		ret = -EINVAL;
		goto err_unref;
	}

	dfb = FUNC5(dev, mode, obj);
	if (FUNC3(dfb)) {
		ret = FUNC4(dfb);
		goto err;
	}

	FUNC8(&obj->obj);

	return &dfb->fb;

 err_unref:
	FUNC8(&obj->obj);
 err:
	FUNC1("failed to initialize framebuffer: %d\n", ret);
	return FUNC2(ret);
}