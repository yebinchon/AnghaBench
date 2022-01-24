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
struct rcar_du_format_info {int planes; int bpp; } ;
struct rcar_du_device {TYPE_1__* info; } ;
struct drm_mode_fb_cmd2 {unsigned int* pitches; int /*<<< orphan*/  pixel_format; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; struct rcar_du_device* dev_private; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct drm_framebuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCAR_DU_QUIRK_ALIGN_128B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct drm_framebuffer* FUNC2 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ; 
 struct rcar_du_format_info* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rcar_du_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC5(struct drm_device *dev, struct drm_file *file_priv,
		  const struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct rcar_du_device *rcdu = dev->dev_private;
	const struct rcar_du_format_info *format;
	unsigned int max_pitch;
	unsigned int align;
	unsigned int i;

	format = FUNC3(mode_cmd->pixel_format);
	if (format == NULL) {
		FUNC1(dev->dev, "unsupported pixel format %08x\n",
			mode_cmd->pixel_format);
		return FUNC0(-EINVAL);
	}

	if (rcdu->info->gen < 3) {
		/*
		 * On Gen2 the DU limits the pitch to 4095 pixels and requires
		 * buffers to be aligned to a 16 pixels boundary (or 128 bytes
		 * on some platforms).
		 */
		unsigned int bpp = format->planes == 1 ? format->bpp / 8 : 1;

		max_pitch = 4095 * bpp;

		if (FUNC4(rcdu, RCAR_DU_QUIRK_ALIGN_128B))
			align = 128;
		else
			align = 16 * bpp;
	} else {
		/*
		 * On Gen3 the memory interface is handled by the VSP that
		 * limits the pitch to 65535 bytes and has no alignment
		 * constraint.
		 */
		max_pitch = 65535;
		align = 1;
	}

	if (mode_cmd->pitches[0] & (align - 1) ||
	    mode_cmd->pitches[0] > max_pitch) {
		FUNC1(dev->dev, "invalid pitch value %u\n",
			mode_cmd->pitches[0]);
		return FUNC0(-EINVAL);
	}

	for (i = 1; i < format->planes; ++i) {
		if (mode_cmd->pitches[i] != mode_cmd->pitches[0]) {
			FUNC1(dev->dev,
				"luma and chroma pitches do not match\n");
			return FUNC0(-EINVAL);
		}
	}

	return FUNC2(dev, file_priv, mode_cmd);
}