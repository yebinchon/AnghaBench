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
struct drm_plane {int dummy; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
#define  DRM_PLANE_TYPE_CURSOR 130 
#define  DRM_PLANE_TYPE_OVERLAY 129 
#define  DRM_PLANE_TYPE_PRIMARY 128 
 int /*<<< orphan*/  FUNC0 (struct drm_plane*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *drm_plane,
					     enum drm_plane_type type)
{
	int zpos = FUNC2(type);

	switch (type) {
	case DRM_PLANE_TYPE_PRIMARY:
	case DRM_PLANE_TYPE_OVERLAY:
		FUNC1(drm_plane, zpos, 0, 6);
		break;
	case DRM_PLANE_TYPE_CURSOR:
		FUNC0(drm_plane, zpos);
		break;
	}
}