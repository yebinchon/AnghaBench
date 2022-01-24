#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct rcar_du_plane_state {int /*<<< orphan*/  colorkey; } ;
struct TYPE_5__ {struct drm_property* colorkey; } ;
struct rcar_du_device {TYPE_2__ props; } ;
struct drm_property {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct TYPE_6__ {TYPE_1__* group; } ;
struct TYPE_4__ {struct rcar_du_device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_3__* FUNC0 (struct drm_plane*) ; 
 struct rcar_du_plane_state* FUNC1 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC2(struct drm_plane *plane,
					     struct drm_plane_state *state,
					     struct drm_property *property,
					     uint64_t val)
{
	struct rcar_du_plane_state *rstate = FUNC1(state);
	struct rcar_du_device *rcdu = FUNC0(plane)->group->dev;

	if (property == rcdu->props.colorkey)
		rstate->colorkey = val;
	else
		return -EINVAL;

	return 0;
}