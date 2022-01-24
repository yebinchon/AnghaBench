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
struct amdgpu_framebuffer {struct drm_framebuffer base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct drm_device*,struct amdgpu_framebuffer*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC4 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_framebuffer*) ; 
 struct amdgpu_framebuffer* FUNC7 (int,int /*<<< orphan*/ ) ; 

struct drm_framebuffer *
FUNC8(struct drm_device *dev,
				       struct drm_file *file_priv,
				       const struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct drm_gem_object *obj;
	struct amdgpu_framebuffer *amdgpu_fb;
	int ret;

	obj = FUNC4(file_priv, mode_cmd->handles[0]);
	if (obj ==  NULL) {
		FUNC3(&dev->pdev->dev, "No GEM object associated to handle 0x%08X, "
			"can't create framebuffer\n", mode_cmd->handles[0]);
		return FUNC1(-ENOENT);
	}

	/* Handle is imported dma-buf, so cannot be migrated to VRAM for scanout */
	if (obj->import_attach) {
		FUNC0("Cannot create framebuffer from imported dma_buf\n");
		return FUNC1(-EINVAL);
	}

	amdgpu_fb = FUNC7(sizeof(*amdgpu_fb), GFP_KERNEL);
	if (amdgpu_fb == NULL) {
		FUNC5(obj);
		return FUNC1(-ENOMEM);
	}

	ret = FUNC2(dev, amdgpu_fb, mode_cmd, obj);
	if (ret) {
		FUNC6(amdgpu_fb);
		FUNC5(obj);
		return FUNC1(ret);
	}

	return &amdgpu_fb->base;
}