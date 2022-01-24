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
typedef  scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {int /*<<< orphan*/  modifier; TYPE_1__* format; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int* cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,unsigned int,unsigned int,unsigned int,unsigned int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_framebuffer const*,int,unsigned int*,unsigned int*) ; 
 unsigned int FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC8(int *x, int *y,
				       const struct drm_framebuffer *fb,
				       int color_plane,
				       unsigned int rotation,
				       unsigned int pitch,
				       u32 old_offset, u32 new_offset)
{
	struct drm_i915_private *dev_priv = FUNC7(fb->dev);
	unsigned int cpp = fb->format->cpp[color_plane];

	FUNC0(new_offset > old_offset);

	if (!FUNC5(fb->modifier, color_plane)) {
		unsigned int tile_size, tile_width, tile_height;
		unsigned int pitch_tiles;

		tile_size = FUNC4(dev_priv);
		FUNC3(fb, color_plane, &tile_width, &tile_height);

		if (FUNC1(rotation)) {
			pitch_tiles = pitch / tile_height;
			FUNC6(tile_width, tile_height);
		} else {
			pitch_tiles = pitch / (tile_width * cpp);
		}

		FUNC2(x, y, tile_width, tile_height,
					 tile_size, pitch_tiles,
					 old_offset, new_offset);
	} else {
		old_offset += *y * pitch + *x * cpp;

		*y = (old_offset - new_offset) / pitch;
		*x = ((old_offset - new_offset) - *y * pitch) / cpp;
	}

	return new_offset;
}