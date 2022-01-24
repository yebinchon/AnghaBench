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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  drm_primary_helper_funcs ; 
 int FUNC2 (struct drm_device*,struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*) ; 
 struct drm_plane* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modeset_formats ; 

__attribute__((used)) static struct drm_plane *
FUNC5(struct drm_device *dev)
{
        struct drm_plane *primary;
        int ret;

        primary = FUNC4(sizeof(*primary), GFP_KERNEL);
        if (primary == NULL) {
                FUNC1("Failed to allocate primary plane\n");
                return NULL;
        }

        /* possible_crtc's will be filled in later by crtc_init */
        ret = FUNC2(dev, primary, 0,
                                       &drm_primary_helper_funcs,
                                       modeset_formats,
                                       FUNC0(modeset_formats), NULL,
                                       DRM_PLANE_TYPE_PRIMARY, NULL);
        if (ret) {
                FUNC3(primary);
                primary = NULL;
        }

        return primary;
}