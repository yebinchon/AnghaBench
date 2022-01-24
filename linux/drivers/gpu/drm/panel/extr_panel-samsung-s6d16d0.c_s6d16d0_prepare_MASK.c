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
struct s6d16d0 {int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  supply; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  MIPI_DSI_DCS_TEAR_MODE_VBLANK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int FUNC3 (struct mipi_dsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct s6d16d0* FUNC5 (struct drm_panel*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct mipi_dsi_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct drm_panel *panel)
{
	struct s6d16d0 *s6 = FUNC5(panel);
	struct mipi_dsi_device *dsi = FUNC7(s6->dev);
	int ret;

	ret = FUNC6(s6->supply);
	if (ret) {
		FUNC0(s6->dev, "failed to enable supply (%d)\n", ret);
		return ret;
	}

	/* Assert RESET */
	FUNC1(s6->reset_gpio, 1);
	FUNC8(10);
	/* De-assert RESET */
	FUNC1(s6->reset_gpio, 0);
	FUNC4(120);

	/* Enabe tearing mode: send TE (tearing effect) at VBLANK */
	ret = FUNC3(dsi,
				       MIPI_DSI_DCS_TEAR_MODE_VBLANK);
	if (ret) {
		FUNC0(s6->dev, "failed to enable vblank TE (%d)\n",
			      ret);
		return ret;
	}
	/* Exit sleep mode and power on */
	ret = FUNC2(dsi);
	if (ret) {
		FUNC0(s6->dev, "failed to exit sleep mode (%d)\n",
			      ret);
		return ret;
	}

	return 0;
}