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
struct shmob_drm_format_info {int bpp; scalar_t__ yuv; } ;
struct drm_mode_fb_cmd2 {int* pitches; int /*<<< orphan*/  pixel_format; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct drm_framebuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct drm_framebuffer* FUNC2 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ; 
 struct shmob_drm_format_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC4(struct drm_device *dev, struct drm_file *file_priv,
		    const struct drm_mode_fb_cmd2 *mode_cmd)
{
	const struct shmob_drm_format_info *format;

	format = FUNC3(mode_cmd->pixel_format);
	if (format == NULL) {
		FUNC1(dev->dev, "unsupported pixel format %08x\n",
			mode_cmd->pixel_format);
		return FUNC0(-EINVAL);
	}

	if (mode_cmd->pitches[0] & 7 || mode_cmd->pitches[0] >= 65536) {
		FUNC1(dev->dev, "invalid pitch value %u\n",
			mode_cmd->pitches[0]);
		return FUNC0(-EINVAL);
	}

	if (format->yuv) {
		unsigned int chroma_cpp = format->bpp == 24 ? 2 : 1;

		if (mode_cmd->pitches[1] != mode_cmd->pitches[0] * chroma_cpp) {
			FUNC1(dev->dev,
				"luma and chroma pitches do not match\n");
			return FUNC0(-EINVAL);
		}
	}

	return FUNC2(dev, file_priv, mode_cmd);
}