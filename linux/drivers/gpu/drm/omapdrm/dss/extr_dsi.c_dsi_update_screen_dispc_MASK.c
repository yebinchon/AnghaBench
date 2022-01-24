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
typedef  int /*<<< orphan*/  u32 ;
typedef  unsigned int u16 ;
struct TYPE_3__ {unsigned int hactive; unsigned int vactive; } ;
struct dsi_data {unsigned int update_channel; unsigned int line_buffer_size; int /*<<< orphan*/  te_timer; scalar_t__ te_enabled; int /*<<< orphan*/  output; int /*<<< orphan*/  framedone_timeout_work; TYPE_2__* dss; int /*<<< orphan*/  pix_fmt; TYPE_1__ vm; } ;
struct TYPE_4__ {int /*<<< orphan*/  dispc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DSI_TIMING2 ; 
 int /*<<< orphan*/  DSI_VC_SOURCE_VP ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIPI_DSI_DCS_LONG_WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct dsi_data*,unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dsi_data*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC11 (struct dsi_data*,unsigned int const,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC17(struct dsi_data *dsi)
{
	unsigned int bytespp;
	unsigned int bytespl;
	unsigned int bytespf;
	unsigned int total_len;
	unsigned int packet_payload;
	unsigned int packet_len;
	u32 l;
	int r;
	const unsigned channel = dsi->update_channel;
	const unsigned int line_buf_size = dsi->line_buffer_size;
	u16 w = dsi->vm.hactive;
	u16 h = dsi->vm.vactive;

	FUNC2("dsi_update_screen_dispc(%dx%d)\n", w, h);

	FUNC9(dsi, channel, DSI_VC_SOURCE_VP);

	bytespp	= FUNC7(dsi->pix_fmt) / 8;
	bytespl = w * bytespp;
	bytespf = bytespl * h;

	/* NOTE: packet_payload has to be equal to N * bytespl, where N is
	 * number of lines in a packet.  See errata about VP_CLK_RATIO */

	if (bytespf < line_buf_size)
		packet_payload = bytespf;
	else
		packet_payload = (line_buf_size) / bytespl * bytespl;

	packet_len = packet_payload + 1;	/* 1 byte for DCS cmd */
	total_len = (bytespf / packet_payload) * packet_len;

	if (bytespf % packet_payload)
		total_len += (bytespf % packet_payload) + 1;

	l = FUNC4(total_len, 23, 0); /* TE_SIZE */
	FUNC12(dsi, FUNC1(channel), l);

	FUNC11(dsi, channel, MIPI_DSI_DCS_LONG_WRITE,
		packet_len, 0);

	if (dsi->te_enabled)
		l = FUNC3(l, 1, 30, 30); /* TE_EN */
	else
		l = FUNC3(l, 1, 31, 31); /* TE_START */
	FUNC12(dsi, FUNC1(channel), l);

	/* We put SIDLEMODE to no-idle for the duration of the transfer,
	 * because DSS interrupts are not capable of waking up the CPU and the
	 * framedone interrupt could be delayed for quite a long time. I think
	 * the same goes for any DSS interrupts, but for some reason I have not
	 * seen the problem anywhere else than here.
	 */
	FUNC6(dsi->dss->dispc);

	FUNC8(dsi);

	r = FUNC16(&dsi->framedone_timeout_work,
		FUNC15(250));
	FUNC0(r == 0);

	FUNC13(&dsi->output);

	if (dsi->te_enabled) {
		/* disable LP_RX_TO, so that we can receive TE.  Time to wait
		 * for TE is longer than the timer allows */
		FUNC5(dsi, DSI_TIMING2, 0, 15, 15); /* LP_RX_TO */

		FUNC10(dsi, channel);

#ifdef DSI_CATCH_MISSING_TE
		mod_timer(&dsi->te_timer, jiffies + msecs_to_jiffies(250));
#endif
	}
}