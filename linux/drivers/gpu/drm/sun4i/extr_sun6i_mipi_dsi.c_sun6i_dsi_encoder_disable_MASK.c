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
struct sun6i_dsi {int /*<<< orphan*/  dev; int /*<<< orphan*/  dphy; int /*<<< orphan*/  panel; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sun6i_dsi* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct drm_encoder *encoder)
{
	struct sun6i_dsi *dsi = FUNC4(encoder);

	FUNC0("Disabling DSI output\n");

	if (!FUNC1(dsi->panel)) {
		FUNC2(dsi->panel);
		FUNC3(dsi->panel);
	}

	FUNC6(dsi->dphy);
	FUNC5(dsi->dphy);

	FUNC7(dsi->dev);
}