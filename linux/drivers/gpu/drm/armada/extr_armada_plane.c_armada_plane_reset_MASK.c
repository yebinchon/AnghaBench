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
struct drm_plane {scalar_t__ state; } ;
struct armada_plane_state {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct armada_plane_state* FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_plane *plane)
{
	struct armada_plane_state *st;
	if (plane->state)
		FUNC0(plane->state);
	FUNC2(plane->state);
	st = FUNC3(sizeof(*st), GFP_KERNEL);
	if (st)
		FUNC1(plane, &st->base);
}