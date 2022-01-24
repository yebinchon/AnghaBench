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
struct exynos_drm_gem {unsigned long size; } ;
struct drm_mode_fb_cmd2 {unsigned int height; unsigned int* pitches; unsigned int* offsets; int /*<<< orphan*/ * handles; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_format_info {int num_planes; int /*<<< orphan*/  vsub; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct drm_framebuffer* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct drm_framebuffer*) ; 
 int MAX_FB_BUFFER ; 
 int FUNC4 (struct drm_framebuffer*) ; 
 struct drm_format_info* FUNC5 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 struct drm_framebuffer* FUNC6 (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct exynos_drm_gem**,int) ; 
 struct exynos_drm_gem* FUNC7 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct exynos_drm_gem*) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC9(struct drm_device *dev, struct drm_file *file_priv,
		      const struct drm_mode_fb_cmd2 *mode_cmd)
{
	const struct drm_format_info *info = FUNC5(dev, mode_cmd);
	struct exynos_drm_gem *exynos_gem[MAX_FB_BUFFER];
	struct drm_framebuffer *fb;
	int i;
	int ret;

	for (i = 0; i < info->num_planes; i++) {
		unsigned int height = (i == 0) ? mode_cmd->height :
				     FUNC0(mode_cmd->height, info->vsub);
		unsigned long size = height * mode_cmd->pitches[i] +
				     mode_cmd->offsets[i];

		exynos_gem[i] = FUNC7(file_priv,
						   mode_cmd->handles[i]);
		if (!exynos_gem[i]) {
			FUNC1(dev->dev,
				      "failed to lookup gem object\n");
			ret = -ENOENT;
			goto err;
		}

		if (size > exynos_gem[i]->size) {
			i++;
			ret = -EINVAL;
			goto err;
		}
	}

	fb = FUNC6(dev, mode_cmd, exynos_gem, i);
	if (FUNC3(fb)) {
		ret = FUNC4(fb);
		goto err;
	}

	return fb;

err:
	while (i--)
		FUNC8(exynos_gem[i]);

	return FUNC2(ret);
}