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
struct drm_property {int dummy; } ;
struct drm_plane {TYPE_1__* state; struct drm_property* zpos_property; int /*<<< orphan*/  base; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int zpos; unsigned int normalized_zpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_PROP_IMMUTABLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct drm_property*,unsigned int) ; 
 struct drm_property* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 

int FUNC2(struct drm_plane *plane,
					     unsigned int zpos)
{
	struct drm_property *prop;

	prop = FUNC1(plane->dev, DRM_MODE_PROP_IMMUTABLE,
					 "zpos", zpos, zpos);
	if (!prop)
		return -ENOMEM;

	FUNC0(&plane->base, prop, zpos);

	plane->zpos_property = prop;

	if (plane->state) {
		plane->state->zpos = zpos;
		plane->state->normalized_zpos = zpos;
	}

	return 0;
}