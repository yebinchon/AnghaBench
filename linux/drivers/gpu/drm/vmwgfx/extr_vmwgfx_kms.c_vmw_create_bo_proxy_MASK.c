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
struct vmw_resource {TYPE_1__* dev_priv; scalar_t__ backup_offset; int /*<<< orphan*/  backup; } ;
struct vmw_surface {struct vmw_resource res; } ;
struct vmw_buffer_object {int dummy; } ;
struct drm_vmw_size {unsigned int width; int depth; int /*<<< orphan*/  height; int /*<<< orphan*/  member_0; } ;
struct drm_mode_fb_cmd2 {int pixel_format; unsigned int* pitches; int /*<<< orphan*/  height; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmdbuf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  DRM_FORMAT_ARGB8888 131 
#define  DRM_FORMAT_RGB565 130 
#define  DRM_FORMAT_XRGB1555 129 
#define  DRM_FORMAT_XRGB8888 128 
 int EINVAL ; 
 int /*<<< orphan*/  SVGA3D_MS_PATTERN_NONE ; 
 int /*<<< orphan*/  SVGA3D_MS_QUALITY_NONE ; 
 int /*<<< orphan*/  SVGA3D_P8 ; 
 int /*<<< orphan*/  SVGA3D_R5G6B5 ; 
 int /*<<< orphan*/  SVGA3D_X8R8G8B8 ; 
 int /*<<< orphan*/  FUNC1 (int,struct drm_format_name_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_buffer_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_resource*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_resource*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_vmw_size,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmw_surface**) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev,
			       const struct drm_mode_fb_cmd2 *mode_cmd,
			       struct vmw_buffer_object *bo_mob,
			       struct vmw_surface **srf_out)
{
	uint32_t format;
	struct drm_vmw_size content_base_size = {0};
	struct vmw_resource *res;
	unsigned int bytes_pp;
	struct drm_format_name_buf format_name;
	int ret;

	switch (mode_cmd->pixel_format) {
	case DRM_FORMAT_ARGB8888:
	case DRM_FORMAT_XRGB8888:
		format = SVGA3D_X8R8G8B8;
		bytes_pp = 4;
		break;

	case DRM_FORMAT_RGB565:
	case DRM_FORMAT_XRGB1555:
		format = SVGA3D_R5G6B5;
		bytes_pp = 2;
		break;

	case 8:
		format = SVGA3D_P8;
		bytes_pp = 1;
		break;

	default:
		FUNC0("Invalid framebuffer format %s\n",
			  FUNC1(mode_cmd->pixel_format, &format_name));
		return -EINVAL;
	}

	content_base_size.width  = mode_cmd->pitches[0] / bytes_pp;
	content_base_size.height = mode_cmd->height;
	content_base_size.depth  = 1;

	ret = FUNC8(dev,
					 0, /* kernel visible only */
					 0, /* flags */
					 format,
					 true, /* can be a scanout buffer */
					 1, /* num of mip levels */
					 0,
					 0,
					 content_base_size,
					 SVGA3D_MS_PATTERN_NONE,
					 SVGA3D_MS_QUALITY_NONE,
					 srf_out);
	if (ret) {
		FUNC0("Failed to allocate proxy content buffer\n");
		return ret;
	}

	res = &(*srf_out)->res;

	/* Reserve and switch the backing mob. */
	FUNC2(&res->dev_priv->cmdbuf_mutex);
	(void) FUNC6(res, false, true);
	FUNC5(&res->backup);
	res->backup = FUNC4(bo_mob);
	res->backup_offset = 0;
	FUNC7(res, false, false, false, NULL, 0);
	FUNC3(&res->dev_priv->cmdbuf_mutex);

	return 0;
}