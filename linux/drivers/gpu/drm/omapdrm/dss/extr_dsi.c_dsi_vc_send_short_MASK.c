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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct dsi_data {TYPE_1__* vc; scalar_t__ debug_write; } ;
struct TYPE_2__ {int vc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DSI_VC_SOURCE_L4 ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dsi_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dsi_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct dsi_data *dsi, int channel, u8 data_type,
			     u16 data, u8 ecc)
{
	u32 r;
	u8 data_id;

	FUNC5(!FUNC6(dsi));

	if (dsi->debug_write)
		FUNC2("dsi_vc_send_short(ch%d, dt %#x, b1 %#x, b2 %#x)\n",
				channel,
				data_type, data & 0xff, (data >> 8) & 0xff);

	FUNC8(dsi, channel, DSI_VC_SOURCE_L4);

	if (FUNC4(FUNC7(dsi, FUNC0(channel)), 16, 16)) {
		FUNC3("ERROR FIFO FULL, aborting transfer\n");
		return -EINVAL;
	}

	data_id = data_type | dsi->vc[channel].vc_id << 6;

	r = (data_id << 0) | (data << 8) | (ecc << 24);

	FUNC9(dsi, FUNC1(channel), r);

	return 0;
}