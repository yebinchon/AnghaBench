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
struct rockchip_lvds {int /*<<< orphan*/  panel; int /*<<< orphan*/  dev; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct rockchip_lvds* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,struct drm_display_mode*) ; 
 int FUNC6 (struct rockchip_lvds*) ; 
 int /*<<< orphan*/  FUNC7 (struct rockchip_lvds*,struct drm_encoder*) ; 

__attribute__((used)) static void FUNC8(struct drm_encoder *encoder)
{
	struct rockchip_lvds *lvds = FUNC4(encoder);
	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
	int ret;

	FUNC2(lvds->panel);
	ret = FUNC6(lvds);
	if (ret < 0) {
		FUNC0(lvds->dev, "failed to power on lvds: %d\n", ret);
		FUNC3(lvds->panel);
	}
	FUNC5(encoder, mode);
	FUNC7(lvds, encoder);
	FUNC1(lvds->panel);
}