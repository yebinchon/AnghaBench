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
struct vc4_load_tracker_state {int dummy; } ;
struct drm_private_state {int dummy; } ;
struct drm_private_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc4_load_tracker_state*) ; 
 struct vc4_load_tracker_state* FUNC1 (struct drm_private_state*) ; 

__attribute__((used)) static void FUNC2(struct drm_private_obj *obj,
					   struct drm_private_state *state)
{
	struct vc4_load_tracker_state *load_state;

	load_state = FUNC1(state);
	FUNC0(load_state);
}