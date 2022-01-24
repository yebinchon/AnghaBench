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
struct drm_private_state {int dummy; } ;
struct tegra_display_hub_state {struct drm_private_state base; } ;
struct drm_private_obj {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_private_obj*,struct drm_private_state*) ; 
 struct tegra_display_hub_state* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_private_state *
FUNC2(struct drm_private_obj *obj)
{
	struct tegra_display_hub_state *state;

	state = FUNC1(obj->state, sizeof(*state), GFP_KERNEL);
	if (!state)
		return NULL;

	FUNC0(obj, &state->base);

	return &state->base;
}