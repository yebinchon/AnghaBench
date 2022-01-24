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
typedef  int u32 ;
struct videomode {int flags; int /*<<< orphan*/  vactive; int /*<<< orphan*/  hactive; int /*<<< orphan*/  vsync_len; int /*<<< orphan*/  hsync_len; int /*<<< orphan*/  vback_porch; int /*<<< orphan*/  vfront_porch; int /*<<< orphan*/  hback_porch; int /*<<< orphan*/  hfront_porch; } ;
struct malidp_hw_device {int output_color_depth; TYPE_2__* hw; } ;
struct TYPE_3__ {scalar_t__ out_depth_base; } ;
struct TYPE_4__ {TYPE_1__ map; } ;

/* Variables and functions */
 int DISPLAY_FLAGS_HSYNC_HIGH ; 
 int DISPLAY_FLAGS_INTERLACED ; 
 int DISPLAY_FLAGS_VSYNC_HIGH ; 
 scalar_t__ MALIDP550_DE_BGND_COLOR ; 
 scalar_t__ MALIDP550_DE_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MALIDP550_HSYNCPOL ; 
 scalar_t__ MALIDP550_TIMINGS_BASE ; 
 int MALIDP550_VSYNCPOL ; 
 int MALIDP_BGND_COLOR_B ; 
 int MALIDP_BGND_COLOR_G ; 
 int MALIDP_BGND_COLOR_R ; 
 int MALIDP_DE_DEFAULT_PREFETCH_START ; 
 int /*<<< orphan*/  MALIDP_DE_DISPLAY_FUNC ; 
 scalar_t__ MALIDP_DE_HV_ACTIVE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ MALIDP_DE_H_TIMINGS ; 
 scalar_t__ MALIDP_DE_SYNC_WIDTH ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ MALIDP_DE_V_TIMINGS ; 
 int /*<<< orphan*/  MALIDP_DISP_FUNC_ILACED ; 
 int /*<<< orphan*/  FUNC8 (struct malidp_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct malidp_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct malidp_hw_device*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct malidp_hw_device *hwdev, struct videomode *mode)
{
	u32 val = MALIDP_DE_DEFAULT_PREFETCH_START;

	FUNC10(hwdev, hwdev->output_color_depth,
		hwdev->hw->map.out_depth_base);
	FUNC10(hwdev, val, MALIDP550_DE_CONTROL);
	/*
	 * Mali-DP550 and Mali-DP650 encode the background color like this:
	 *   - red   @ MALIDP550_DE_BGND_COLOR[23:16]
	 *   - green @ MALIDP550_DE_BGND_COLOR[15:8]
	 *   - blue  @ MALIDP550_DE_BGND_COLOR[7:0]
	 *
	 * We need to truncate the least significant 4 bits from the default
	 * MALIDP_BGND_COLOR_x values
	 */
	val = (((MALIDP_BGND_COLOR_R >> 4) & 0xff) << 16) |
	      (((MALIDP_BGND_COLOR_G >> 4) & 0xff) << 8) |
	      ((MALIDP_BGND_COLOR_B >> 4) & 0xff);
	FUNC10(hwdev, val, MALIDP550_DE_BGND_COLOR);

	val = FUNC3(mode->hfront_porch) |
		FUNC2(mode->hback_porch);
	FUNC10(hwdev, val, MALIDP550_TIMINGS_BASE + MALIDP_DE_H_TIMINGS);

	val = FUNC0(mode->vfront_porch) |
		FUNC6(mode->vback_porch);
	FUNC10(hwdev, val, MALIDP550_TIMINGS_BASE + MALIDP_DE_V_TIMINGS);

	val = FUNC4(mode->hsync_len) |
		FUNC7(mode->vsync_len);
	if (mode->flags & DISPLAY_FLAGS_HSYNC_HIGH)
		val |= MALIDP550_HSYNCPOL;
	if (mode->flags & DISPLAY_FLAGS_VSYNC_HIGH)
		val |= MALIDP550_VSYNCPOL;
	FUNC10(hwdev, val, MALIDP550_TIMINGS_BASE + MALIDP_DE_SYNC_WIDTH);

	val = FUNC1(mode->hactive) | FUNC5(mode->vactive);
	FUNC10(hwdev, val, MALIDP550_TIMINGS_BASE + MALIDP_DE_HV_ACTIVE);

	if (mode->flags & DISPLAY_FLAGS_INTERLACED)
		FUNC9(hwdev, MALIDP_DISP_FUNC_ILACED, MALIDP_DE_DISPLAY_FUNC);
	else
		FUNC8(hwdev, MALIDP_DISP_FUNC_ILACED, MALIDP_DE_DISPLAY_FUNC);
}