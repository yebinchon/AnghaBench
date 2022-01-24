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
struct drm_framebuffer {int dummy; } ;
struct virtio_gpu_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {scalar_t__ pixel_format; int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRM_FORMAT_HOST_ARGB8888 ; 
 scalar_t__ DRM_FORMAT_HOST_XRGB8888 ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_framebuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_gpu_framebuffer*) ; 
 struct virtio_gpu_framebuffer* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_device*,struct virtio_gpu_framebuffer*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object*) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC6(struct drm_device *dev,
				   struct drm_file *file_priv,
				   const struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct drm_gem_object *obj = NULL;
	struct virtio_gpu_framebuffer *virtio_gpu_fb;
	int ret;

	if (mode_cmd->pixel_format != DRM_FORMAT_HOST_XRGB8888 &&
	    mode_cmd->pixel_format != DRM_FORMAT_HOST_ARGB8888)
		return FUNC0(-ENOENT);

	/* lookup object associated with res handle */
	obj = FUNC1(file_priv, mode_cmd->handles[0]);
	if (!obj)
		return FUNC0(-EINVAL);

	virtio_gpu_fb = FUNC4(sizeof(*virtio_gpu_fb), GFP_KERNEL);
	if (virtio_gpu_fb == NULL)
		return FUNC0(-ENOMEM);

	ret = FUNC5(dev, virtio_gpu_fb, mode_cmd, obj);
	if (ret) {
		FUNC3(virtio_gpu_fb);
		FUNC2(obj);
		return NULL;
	}

	return &virtio_gpu_fb->base;
}