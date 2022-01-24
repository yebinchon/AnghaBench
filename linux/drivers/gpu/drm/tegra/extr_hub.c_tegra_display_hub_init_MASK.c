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
struct tegra_drm {struct tegra_display_hub* hub; } ;
struct tegra_display_hub_state {int /*<<< orphan*/  base; } ;
struct tegra_display_hub {int /*<<< orphan*/  base; } ;
struct host1x_client {int /*<<< orphan*/  parent; } ;
struct drm_device {struct tegra_drm* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct drm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tegra_display_hub_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_display_hub_state_funcs ; 
 struct tegra_display_hub* FUNC3 (struct host1x_client*) ; 

__attribute__((used)) static int FUNC4(struct host1x_client *client)
{
	struct tegra_display_hub *hub = FUNC3(client);
	struct drm_device *drm = FUNC0(client->parent);
	struct tegra_drm *tegra = drm->dev_private;
	struct tegra_display_hub_state *state;

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	FUNC1(drm, &hub->base, &state->base,
				    &tegra_display_hub_state_funcs);

	tegra->hub = hub;

	return 0;
}