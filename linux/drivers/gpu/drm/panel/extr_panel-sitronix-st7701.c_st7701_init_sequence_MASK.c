#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct st7701 {int sleep_delay; TYPE_1__* desc; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_display_mode* mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CMD2BK0_SEL ; 
 int /*<<< orphan*/  DSI_CMD2BK1_SEL ; 
 int /*<<< orphan*/  DSI_CMD2BKX_SEL ; 
 int /*<<< orphan*/  DSI_CMD2BKX_SEL_NONE ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_INVSEL ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_INVSEL_B0 ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_INVSEL_B1 ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_LNESET ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_LNESET_B0 ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_LNESET_B1 ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_NVGAMCTRL ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_PORCTRL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode const*) ; 
 int /*<<< orphan*/  DSI_CMD2_BK0_PVGAMCTRL ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_MIPISET1 ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_MIPISET1_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_PWCTLR1 ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_PWCTLR1_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_PWCTLR2 ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_PWCTLR2_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_SPD1 ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_SPD1_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_SPD2 ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_SPD2_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_TESTCMD ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_TESTCMD_VAL ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_VCOM ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_VCOM_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_VGHSS ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_VGHSS_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_VGLS ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_VGLS_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_VRHA_SET ; 
 int /*<<< orphan*/  DSI_CMD2_BK1_VRHS ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct st7701*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct st7701 *st7701)
{
	const struct drm_display_mode *mode = st7701->desc->mode;

	FUNC2(st7701, MIPI_DCS_SOFT_RESET, 0x00);

	/* We need to wait 5ms before sending new commands */
	FUNC3(5);

	FUNC2(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);

	FUNC3(st7701->sleep_delay);

	/* Command2, BK0 */
	FUNC2(st7701, DSI_CMD2BKX_SEL,
		   0x77, 0x01, 0x00, 0x00, DSI_CMD2BK0_SEL);
	FUNC2(st7701, DSI_CMD2_BK0_PVGAMCTRL, 0x00, 0x0E, 0x15, 0x0F,
		   0x11, 0x08, 0x08, 0x08, 0x08, 0x23, 0x04, 0x13, 0x12,
		   0x2B, 0x34, 0x1F);
	FUNC2(st7701, DSI_CMD2_BK0_NVGAMCTRL, 0x00, 0x0E, 0x95, 0x0F,
		   0x13, 0x07, 0x09, 0x08, 0x08, 0x22, 0x04, 0x10, 0x0E,
		   0x2C, 0x34, 0x1F);
	FUNC2(st7701, DSI_CMD2_BK0_LNESET,
		   DSI_CMD2_BK0_LNESET_B0, DSI_CMD2_BK0_LNESET_B1);
	FUNC2(st7701, DSI_CMD2_BK0_PORCTRL,
		   FUNC0(mode),
		   FUNC1(mode));
	FUNC2(st7701, DSI_CMD2_BK0_INVSEL,
		   DSI_CMD2_BK0_INVSEL_B0, DSI_CMD2_BK0_INVSEL_B1);

	/* Command2, BK1 */
	FUNC2(st7701, DSI_CMD2BKX_SEL,
			0x77, 0x01, 0x00, 0x00, DSI_CMD2BK1_SEL);
	FUNC2(st7701, DSI_CMD2_BK1_VRHS, DSI_CMD2_BK1_VRHA_SET);
	FUNC2(st7701, DSI_CMD2_BK1_VCOM, DSI_CMD2_BK1_VCOM_SET);
	FUNC2(st7701, DSI_CMD2_BK1_VGHSS, DSI_CMD2_BK1_VGHSS_SET);
	FUNC2(st7701, DSI_CMD2_BK1_TESTCMD, DSI_CMD2_BK1_TESTCMD_VAL);
	FUNC2(st7701, DSI_CMD2_BK1_VGLS, DSI_CMD2_BK1_VGLS_SET);
	FUNC2(st7701, DSI_CMD2_BK1_PWCTLR1, DSI_CMD2_BK1_PWCTLR1_SET);
	FUNC2(st7701, DSI_CMD2_BK1_PWCTLR2, DSI_CMD2_BK1_PWCTLR2_SET);
	FUNC2(st7701, DSI_CMD2_BK1_SPD1, DSI_CMD2_BK1_SPD1_SET);
	FUNC2(st7701, DSI_CMD2_BK1_SPD2, DSI_CMD2_BK1_SPD2_SET);
	FUNC2(st7701, DSI_CMD2_BK1_MIPISET1, DSI_CMD2_BK1_MIPISET1_SET);

	/**
	 * ST7701_SPEC_V1.2 is unable to provide enough information above this
	 * specific command sequence, so grab the same from vendor BSP driver.
	 */
	FUNC2(st7701, 0xE0, 0x00, 0x00, 0x02);
	FUNC2(st7701, 0xE1, 0x0B, 0x00, 0x0D, 0x00, 0x0C, 0x00, 0x0E,
		   0x00, 0x00, 0x44, 0x44);
	FUNC2(st7701, 0xE2, 0x33, 0x33, 0x44, 0x44, 0x64, 0x00, 0x66,
		   0x00, 0x65, 0x00, 0x67, 0x00, 0x00);
	FUNC2(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
	FUNC2(st7701, 0xE4, 0x44, 0x44);
	FUNC2(st7701, 0xE5, 0x0C, 0x78, 0x3C, 0xA0, 0x0E, 0x78, 0x3C,
		   0xA0, 0x10, 0x78, 0x3C, 0xA0, 0x12, 0x78, 0x3C, 0xA0);
	FUNC2(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
	FUNC2(st7701, 0xE7, 0x44, 0x44);
	FUNC2(st7701, 0xE8, 0x0D, 0x78, 0x3C, 0xA0, 0x0F, 0x78, 0x3C,
		   0xA0, 0x11, 0x78, 0x3C, 0xA0, 0x13, 0x78, 0x3C, 0xA0);
	FUNC2(st7701, 0xEB, 0x02, 0x02, 0x39, 0x39, 0xEE, 0x44, 0x00);
	FUNC2(st7701, 0xEC, 0x00, 0x00);
	FUNC2(st7701, 0xED, 0xFF, 0xF1, 0x04, 0x56, 0x72, 0x3F, 0xFF,
		   0xFF, 0xFF, 0xFF, 0xF3, 0x27, 0x65, 0x40, 0x1F, 0xFF);

	/* disable Command2 */
	FUNC2(st7701, DSI_CMD2BKX_SEL,
		   0x77, 0x01, 0x00, 0x00, DSI_CMD2BKX_SEL_NONE);
}