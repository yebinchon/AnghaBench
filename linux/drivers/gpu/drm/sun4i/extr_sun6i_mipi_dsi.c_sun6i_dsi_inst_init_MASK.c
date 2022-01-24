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
typedef  int u8 ;
struct sun6i_dsi {int /*<<< orphan*/  regs; } ;
struct mipi_dsi_device {scalar_t__ lanes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_INST_ESCA_LPDT ; 
 int /*<<< orphan*/  DSI_INST_ID_DLY ; 
 int /*<<< orphan*/  DSI_INST_ID_HSC ; 
 int /*<<< orphan*/  DSI_INST_ID_HSCEXIT ; 
 int /*<<< orphan*/  DSI_INST_ID_HSD ; 
 int /*<<< orphan*/  DSI_INST_ID_LP11 ; 
 int /*<<< orphan*/  DSI_INST_ID_LPDT ; 
 int /*<<< orphan*/  DSI_INST_ID_NOP ; 
 int /*<<< orphan*/  DSI_INST_ID_TBA ; 
 int /*<<< orphan*/  DSI_INST_MODE_ESCAPE ; 
 int /*<<< orphan*/  DSI_INST_MODE_HS ; 
 int /*<<< orphan*/  DSI_INST_MODE_HSCEXIT ; 
 int /*<<< orphan*/  DSI_INST_MODE_NOP ; 
 int /*<<< orphan*/  DSI_INST_MODE_STOP ; 
 int /*<<< orphan*/  DSI_INST_MODE_TBA ; 
 int /*<<< orphan*/  DSI_INST_PACK_COMMAND ; 
 int /*<<< orphan*/  DSI_INST_PACK_PIXEL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sun6i_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sun6i_dsi *dsi,
				struct mipi_dsi_device *device)
{
	u8 lanes_mask = FUNC0(device->lanes - 1, 0);

	FUNC6(dsi, DSI_INST_ID_LP11, DSI_INST_MODE_STOP,
			     true, lanes_mask, 0, 0);

	FUNC6(dsi, DSI_INST_ID_TBA, DSI_INST_MODE_TBA,
			     false, 1, 0, 0);

	FUNC6(dsi, DSI_INST_ID_HSC, DSI_INST_MODE_HS,
			     true, 0, DSI_INST_PACK_PIXEL, 0);

	FUNC6(dsi, DSI_INST_ID_HSD, DSI_INST_MODE_HS,
			     false, lanes_mask, DSI_INST_PACK_PIXEL, 0);

	FUNC6(dsi, DSI_INST_ID_LPDT, DSI_INST_MODE_ESCAPE,
			     false, 1, DSI_INST_PACK_COMMAND,
			     DSI_INST_ESCA_LPDT);

	FUNC6(dsi, DSI_INST_ID_HSCEXIT, DSI_INST_MODE_HSCEXIT,
			     true, 0, 0, 0);

	FUNC6(dsi, DSI_INST_ID_NOP, DSI_INST_MODE_STOP,
			     false, lanes_mask, 0, 0);

	FUNC6(dsi, DSI_INST_ID_DLY, DSI_INST_MODE_NOP,
			     true, lanes_mask, 0, 0);

	FUNC5(dsi->regs, FUNC3(0),
		     FUNC2(DSI_INST_ID_NOP) |
		     FUNC4(DSI_INST_ID_HSCEXIT) |
		     FUNC1(1));
}