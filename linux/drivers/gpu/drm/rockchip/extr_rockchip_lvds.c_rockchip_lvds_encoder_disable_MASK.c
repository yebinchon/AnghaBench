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
struct rockchip_lvds {int /*<<< orphan*/  panel; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rockchip_lvds* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct rockchip_lvds*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct rockchip_lvds *lvds = FUNC2(encoder);

	FUNC0(lvds->panel);
	FUNC3(lvds);
	FUNC1(lvds->panel);
}