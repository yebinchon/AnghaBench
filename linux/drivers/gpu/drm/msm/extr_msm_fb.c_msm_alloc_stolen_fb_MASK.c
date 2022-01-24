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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_mode_fb_cmd2 {int width; int height; int* pitches; int /*<<< orphan*/  pixel_format; } ;
struct drm_gem_object {int dummy; } ;
typedef  struct drm_gem_object drm_framebuffer ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__* primary; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct drm_gem_object* FUNC2 (struct drm_gem_object*) ; 
 scalar_t__ FUNC3 (struct drm_gem_object*) ; 
 int MSM_BO_SCANOUT ; 
 int MSM_BO_STOLEN ; 
 int MSM_BO_WC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC6 (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_gem_object**) ; 
 struct drm_gem_object* FUNC7 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gem_object*,char*) ; 

struct drm_framebuffer *
FUNC9(struct drm_device *dev, int w, int h, int p, uint32_t format)
{
	struct drm_mode_fb_cmd2 mode_cmd = {
		.pixel_format = format,
		.width = w,
		.height = h,
		.pitches = &p ,
	};
	struct drm_gem_object *bo;
	struct drm_framebuffer *fb;
	int size;

	/* allocate backing bo */
	size = mode_cmd.pitches[0] * mode_cmd.height;
	FUNC0("allocating %d bytes for fb %d", size, dev->primary->index);
	bo = FUNC7(dev, size, MSM_BO_SCANOUT | MSM_BO_WC | MSM_BO_STOLEN);
	if (FUNC3(bo)) {
		FUNC4(dev->dev, "could not allocate stolen bo\n");
		/* try regular bo: */
		bo = FUNC7(dev, size, MSM_BO_SCANOUT | MSM_BO_WC);
	}
	if (FUNC3(bo)) {
		FUNC1(dev->dev, "failed to allocate buffer object\n");
		return FUNC2(bo);
	}

	FUNC8(bo, "stolenfb");

	fb = FUNC6(dev, &mode_cmd, &bo);
	if (FUNC3(fb)) {
		FUNC1(dev->dev, "failed to allocate fb\n");
		/* note: if fb creation failed, we can't rely on fb destroy
		 * to unref the bo:
		 */
		FUNC5(bo);
		return FUNC2(fb);
	}

	return fb;
}