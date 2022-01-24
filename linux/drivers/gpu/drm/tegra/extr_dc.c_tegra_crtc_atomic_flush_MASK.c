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
typedef  int u32 ;
struct tegra_dc_state {int planes; } ;
struct tegra_dc {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CMD_STATE_CONTROL ; 
 int GENERAL_ACT_REQ ; 
 int GENERAL_UPDATE ; 
 int FUNC0 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 
 struct tegra_dc_state* FUNC2 (int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc,
				    struct drm_crtc_state *old_crtc_state)
{
	struct tegra_dc_state *state = FUNC2(crtc->state);
	struct tegra_dc *dc = FUNC3(crtc);
	u32 value;

	value = state->planes << 8 | GENERAL_UPDATE;
	FUNC1(dc, value, DC_CMD_STATE_CONTROL);
	value = FUNC0(dc, DC_CMD_STATE_CONTROL);

	value = state->planes | GENERAL_ACT_REQ;
	FUNC1(dc, value, DC_CMD_STATE_CONTROL);
	value = FUNC0(dc, DC_CMD_STATE_CONTROL);
}