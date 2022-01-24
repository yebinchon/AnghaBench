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
struct sun6i_dsi {int /*<<< orphan*/  regs; } ;
struct mipi_dsi_msg {int tx_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_START_LPTX ; 
 int /*<<< orphan*/  SUN6I_DSI_CMD_CTL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sun6i_dsi*,struct mipi_dsi_msg const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sun6i_dsi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sun6i_dsi *dsi,
				     const struct mipi_dsi_msg *msg)
{
	FUNC1(dsi->regs, FUNC0(0),
		     FUNC3(dsi, msg));
	FUNC2(dsi->regs, SUN6I_DSI_CMD_CTL_REG,
			  0xff, (4 - 1));

	FUNC4(dsi, DSI_START_LPTX);

	return msg->tx_len;
}