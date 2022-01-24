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
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct drm_plane*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  formats ; 
 int /*<<< orphan*/  mtk_plane_funcs ; 
 int /*<<< orphan*/  mtk_plane_helper_funcs ; 

int FUNC4(struct drm_device *dev, struct drm_plane *plane,
		   unsigned long possible_crtcs, enum drm_plane_type type)
{
	int err;

	err = FUNC3(dev, plane, possible_crtcs,
				       &mtk_plane_funcs, formats,
				       FUNC0(formats), NULL, type, NULL);
	if (err) {
		FUNC1("failed to initialize plane\n");
		return err;
	}

	FUNC2(plane, &mtk_plane_helper_funcs);

	return 0;
}