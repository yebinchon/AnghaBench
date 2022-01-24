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
struct mipi_dsi_msg {int type; int rx_len; } ;
struct mipi_dsi_host {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
#define  MIPI_DSI_DCS_LONG_WRITE 132 
#define  MIPI_DSI_DCS_READ 131 
#define  MIPI_DSI_DCS_SHORT_WRITE 130 
#define  MIPI_DSI_DCS_SHORT_WRITE_PARAM 129 
#define  MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM 128 
 int /*<<< orphan*/  SUN6I_DSI_CMD_CTL_REG ; 
 int SUN6I_DSI_CMD_CTL_RX_FLAG ; 
 int SUN6I_DSI_CMD_CTL_RX_OVERFLOW ; 
 int SUN6I_DSI_CMD_CTL_TX_FLAG ; 
 struct sun6i_dsi* FUNC0 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sun6i_dsi*,struct mipi_dsi_msg const*) ; 
 int FUNC3 (struct sun6i_dsi*,struct mipi_dsi_msg const*) ; 
 int FUNC4 (struct sun6i_dsi*,struct mipi_dsi_msg const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sun6i_dsi*) ; 
 int FUNC6 (struct sun6i_dsi*) ; 

__attribute__((used)) static ssize_t FUNC7(struct mipi_dsi_host *host,
				  const struct mipi_dsi_msg *msg)
{
	struct sun6i_dsi *dsi = FUNC0(host);
	int ret;

	ret = FUNC6(dsi);
	if (ret < 0)
		FUNC5(dsi);

	FUNC1(dsi->regs, SUN6I_DSI_CMD_CTL_REG,
		     SUN6I_DSI_CMD_CTL_RX_OVERFLOW |
		     SUN6I_DSI_CMD_CTL_RX_FLAG |
		     SUN6I_DSI_CMD_CTL_TX_FLAG);

	switch (msg->type) {
	case MIPI_DSI_DCS_SHORT_WRITE:
	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
	case MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM:
		ret = FUNC4(dsi, msg);
		break;

	case MIPI_DSI_DCS_LONG_WRITE:
		ret = FUNC3(dsi, msg);
		break;

	case MIPI_DSI_DCS_READ:
		if (msg->rx_len == 1) {
			ret = FUNC2(dsi, msg);
			break;
		}
		/* Else, fall through */

	default:
		ret = -EINVAL;
	}

	return ret;
}