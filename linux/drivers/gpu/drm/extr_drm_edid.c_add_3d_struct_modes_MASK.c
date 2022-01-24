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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct drm_display_mode {int /*<<< orphan*/  flags; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_FLAG_3D_FRAME_PACKING ; 
 int /*<<< orphan*/  DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF ; 
 int /*<<< orphan*/  DRM_MODE_FLAG_3D_TOP_AND_BOTTOM ; 
 struct drm_display_mode* FUNC0 (struct drm_connector*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector, u16 structure,
			       const u8 *video_db, u8 video_len, u8 video_index)
{
	struct drm_display_mode *newmode;
	int modes = 0;

	if (structure & (1 << 0)) {
		newmode = FUNC0(connector, video_db,
							  video_len,
							  video_index);
		if (newmode) {
			newmode->flags |= DRM_MODE_FLAG_3D_FRAME_PACKING;
			FUNC1(connector, newmode);
			modes++;
		}
	}
	if (structure & (1 << 6)) {
		newmode = FUNC0(connector, video_db,
							  video_len,
							  video_index);
		if (newmode) {
			newmode->flags |= DRM_MODE_FLAG_3D_TOP_AND_BOTTOM;
			FUNC1(connector, newmode);
			modes++;
		}
	}
	if (structure & (1 << 8)) {
		newmode = FUNC0(connector, video_db,
							  video_len,
							  video_index);
		if (newmode) {
			newmode->flags |= DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF;
			FUNC1(connector, newmode);
			modes++;
		}
	}

	return modes;
}