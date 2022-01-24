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
struct drm_plane_state {scalar_t__ fb; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;
struct atmel_hlcdc_plane_state {struct drm_plane_state base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_plane*,struct atmel_hlcdc_plane_state*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct atmel_hlcdc_plane_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_hlcdc_plane_state*) ; 
 struct atmel_hlcdc_plane_state* FUNC4 (struct atmel_hlcdc_plane_state*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane_state *
FUNC5(struct drm_plane *p)
{
	struct atmel_hlcdc_plane_state *state =
			FUNC2(p->state);
	struct atmel_hlcdc_plane_state *copy;

	copy = FUNC4(state, sizeof(*state), GFP_KERNEL);
	if (!copy)
		return NULL;

	if (FUNC0(p, copy)) {
		FUNC3(copy);
		return NULL;
	}

	if (copy->base.fb)
		FUNC1(copy->base.fb);

	return &copy->base;
}