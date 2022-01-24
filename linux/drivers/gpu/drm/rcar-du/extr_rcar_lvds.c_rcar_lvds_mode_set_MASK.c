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
struct drm_display_mode {int dummy; } ;
struct rcar_lvds {struct drm_display_mode display_mode; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct rcar_lvds* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_lvds*) ; 

__attribute__((used)) static void FUNC2(struct drm_bridge *bridge,
			       const struct drm_display_mode *mode,
			       const struct drm_display_mode *adjusted_mode)
{
	struct rcar_lvds *lvds = FUNC0(bridge);

	lvds->display_mode = *adjusted_mode;

	FUNC1(lvds);
}