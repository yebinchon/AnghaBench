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
struct drm_mode_fb_cmd2 {int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {scalar_t__ import_attach; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_framebuffer*) ; 
 struct drm_framebuffer* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object*) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC8(struct drm_device *dev,
			       struct drm_file *file_priv,
			       const struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct drm_gem_object *obj;
	struct drm_framebuffer *fb;
	int ret;

	obj = FUNC3(file_priv, mode_cmd->handles[0]);
	if (obj ==  NULL) {
		FUNC2(&dev->pdev->dev, "No GEM object associated to handle 0x%08X, "
			"can't create framebuffer\n", mode_cmd->handles[0]);
		return FUNC1(-ENOENT);
	}

	/* Handle is imported dma-buf, so cannot be migrated to VRAM for scanout */
	if (obj->import_attach) {
		FUNC0("Cannot create framebuffer from imported dma_buf\n");
		return FUNC1(-EINVAL);
	}

	fb = FUNC6(sizeof(*fb), GFP_KERNEL);
	if (fb == NULL) {
		FUNC4(obj);
		return FUNC1(-ENOMEM);
	}

	ret = FUNC7(dev, fb, mode_cmd, obj);
	if (ret) {
		FUNC5(fb);
		FUNC4(obj);
		return FUNC1(ret);
	}

	return fb;
}