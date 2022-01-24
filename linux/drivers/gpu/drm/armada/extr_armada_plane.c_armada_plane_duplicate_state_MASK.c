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
struct drm_plane_state {int dummy; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;
struct armada_plane_state {struct drm_plane_state base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,struct drm_plane_state*) ; 
 struct armada_plane_state* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct drm_plane_state *FUNC3(struct drm_plane *plane)
{
	struct armada_plane_state *st;

	if (FUNC0(!plane->state))
		return NULL;

	st = FUNC2(plane->state, sizeof(*st), GFP_KERNEL);
	if (st)
		FUNC1(plane, &st->base);

	return &st->base;
}