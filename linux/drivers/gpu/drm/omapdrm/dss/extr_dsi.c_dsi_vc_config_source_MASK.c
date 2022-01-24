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
struct dsi_data {TYPE_2__* vc; TYPE_1__* data; } ;
typedef  enum dsi_vc_source { ____Placeholder_dsi_vc_source } dsi_vc_source ;
struct TYPE_4__ {int source; } ;
struct TYPE_3__ {int quirks; } ;

/* Variables and functions */
 int DSI_QUIRK_DCS_CMD_CONFIG_VC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DSI_VC_SOURCE_VP ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dsi_data *dsi, int channel,
				enum dsi_vc_source source)
{
	if (dsi->vc[channel].source == source)
		return 0;

	FUNC1("Source config of virtual channel %d", channel);

	FUNC4(dsi, channel);

	FUNC5(dsi, channel, 0);

	/* VC_BUSY */
	if (!FUNC6(dsi, FUNC0(channel), 15, 0)) {
		FUNC2("vc(%d) busy when trying to config for VP\n", channel);
		return -EIO;
	}

	/* SOURCE, 0 = L4, 1 = video port */
	FUNC3(dsi, FUNC0(channel), source, 1, 1);

	/* DCS_CMD_ENABLE */
	if (dsi->data->quirks & DSI_QUIRK_DCS_CMD_CONFIG_VC) {
		bool enable = source == DSI_VC_SOURCE_VP;
		FUNC3(dsi, FUNC0(channel), enable, 30, 30);
	}

	FUNC5(dsi, channel, 1);

	dsi->vc[channel].source = source;

	return 0;
}