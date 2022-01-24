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
struct drm_connector_state {int dummy; } ;
struct tegra_dsi_state {struct drm_connector_state base; } ;
struct drm_connector {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct drm_connector_state*) ; 
 struct tegra_dsi_state* FUNC1 (struct tegra_dsi_state*,int,int /*<<< orphan*/ ) ; 
 struct tegra_dsi_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_connector_state *
FUNC3(struct drm_connector *connector)
{
	struct tegra_dsi_state *state = FUNC2(connector->state);
	struct tegra_dsi_state *copy;

	copy = FUNC1(state, sizeof(*state), GFP_KERNEL);
	if (!copy)
		return NULL;

	FUNC0(connector,
						      &copy->base);

	return &copy->base;
}