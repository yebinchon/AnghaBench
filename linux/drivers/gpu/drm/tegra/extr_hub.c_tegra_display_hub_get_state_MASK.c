#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra_display_hub_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct tegra_display_hub {int /*<<< orphan*/  base; TYPE_1__ client; } ;
struct drm_private_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  connection_mutex; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 struct tegra_display_hub_state* FUNC0 (struct drm_private_state*) ; 
 scalar_t__ FUNC1 (struct drm_private_state*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ ) ; 
 struct drm_private_state* FUNC4 (struct drm_atomic_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tegra_display_hub_state* FUNC6 (struct drm_private_state*) ; 

__attribute__((used)) static struct tegra_display_hub_state *
FUNC7(struct tegra_display_hub *hub,
			    struct drm_atomic_state *state)
{
	struct drm_device *drm = FUNC3(hub->client.parent);
	struct drm_private_state *priv;

	FUNC2(!FUNC5(&drm->mode_config.connection_mutex));

	priv = FUNC4(state, &hub->base);
	if (FUNC1(priv))
		return FUNC0(priv);

	return FUNC6(priv);
}