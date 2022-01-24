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
struct mdp4_plane {int pipe; int /*<<< orphan*/  nformats; int /*<<< orphan*/  formats; int /*<<< orphan*/  caps; int /*<<< orphan*/  name; struct drm_plane base; } ;
struct drm_device {int dummy; } ;
typedef  enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DRM_PLANE_TYPE_OVERLAY ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 struct drm_plane* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,struct drm_plane*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct mdp4_plane* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_plane*) ; 
 int /*<<< orphan*/  mdp4_plane_funcs ; 
 int /*<<< orphan*/  mdp4_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC8 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * pipe_names ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct drm_plane *FUNC11(struct drm_device *dev,
		enum mdp4_pipe pipe_id, bool private_plane)
{
	struct drm_plane *plane = NULL;
	struct mdp4_plane *mdp4_plane;
	int ret;
	enum drm_plane_type type;

	mdp4_plane = FUNC5(sizeof(*mdp4_plane), GFP_KERNEL);
	if (!mdp4_plane) {
		ret = -ENOMEM;
		goto fail;
	}

	plane = &mdp4_plane->base;

	mdp4_plane->pipe = pipe_id;
	mdp4_plane->name = pipe_names[pipe_id];
	mdp4_plane->caps = FUNC6(pipe_id);

	mdp4_plane->nformats = FUNC9(mdp4_plane->formats,
			FUNC0(mdp4_plane->formats),
			!FUNC10(mdp4_plane->caps));

	type = private_plane ? DRM_PLANE_TYPE_PRIMARY : DRM_PLANE_TYPE_OVERLAY;
	ret = FUNC4(dev, plane, 0xff, &mdp4_plane_funcs,
				 mdp4_plane->formats, mdp4_plane->nformats,
				 NULL, type, NULL);
	if (ret)
		goto fail;

	FUNC3(plane, &mdp4_plane_helper_funcs);

	FUNC8(plane, &plane->base);

	FUNC2(plane);

	return plane;

fail:
	if (plane)
		FUNC7(plane);

	return FUNC1(ret);
}