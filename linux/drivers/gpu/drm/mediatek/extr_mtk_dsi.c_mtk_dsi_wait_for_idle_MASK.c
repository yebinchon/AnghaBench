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
struct mtk_dsi {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DSI_BUSY ; 
 scalar_t__ DSI_INTSTA ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_dsi*) ; 
 int FUNC3 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct mtk_dsi *dsi)
{
	int ret;
	u32 val;

	ret = FUNC3(dsi->regs + DSI_INTSTA, val, !(val & DSI_BUSY),
				 4, 2000000);
	if (ret) {
		FUNC0("polling dsi wait not busy timeout!\n");

		FUNC1(dsi);
		FUNC2(dsi);
	}
}