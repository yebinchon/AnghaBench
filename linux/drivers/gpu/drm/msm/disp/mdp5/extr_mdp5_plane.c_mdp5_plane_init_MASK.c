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
struct drm_plane {int /*<<< orphan*/  base; } ;
struct mdp5_plane {int /*<<< orphan*/  nformats; int /*<<< orphan*/  formats; struct drm_plane base; } ;
struct drm_device {int dummy; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct drm_plane* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,struct drm_plane*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct mdp5_plane* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_plane*) ; 
 int /*<<< orphan*/  mdp5_plane_funcs ; 
 int /*<<< orphan*/  mdp5_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC7 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct drm_plane *FUNC9(struct drm_device *dev,
				  enum drm_plane_type type)
{
	struct drm_plane *plane = NULL;
	struct mdp5_plane *mdp5_plane;
	int ret;

	mdp5_plane = FUNC5(sizeof(*mdp5_plane), GFP_KERNEL);
	if (!mdp5_plane) {
		ret = -ENOMEM;
		goto fail;
	}

	plane = &mdp5_plane->base;

	mdp5_plane->nformats = FUNC8(mdp5_plane->formats,
		FUNC0(mdp5_plane->formats), false);

	ret = FUNC4(dev, plane, 0xff, &mdp5_plane_funcs,
			mdp5_plane->formats, mdp5_plane->nformats,
			NULL, type, NULL);
	if (ret)
		goto fail;

	FUNC3(plane, &mdp5_plane_helper_funcs);

	FUNC7(plane, &plane->base);

	FUNC2(plane);

	return plane;

fail:
	if (plane)
		FUNC6(plane);

	return FUNC1(ret);
}