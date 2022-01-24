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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_dc {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CMD_INT_MASK ; 
 int /*<<< orphan*/  VBLANK_INT ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC3(struct drm_crtc *crtc)
{
	struct tegra_dc *dc = FUNC2(crtc);
	u32 value;

	value = FUNC0(dc, DC_CMD_INT_MASK);
	value |= VBLANK_INT;
	FUNC1(dc, value, DC_CMD_INT_MASK);

	return 0;
}