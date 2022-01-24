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
struct TYPE_2__ {int pix_clk_100hz; scalar_t__ timing_3d_format; } ;
struct dc_stream_state {int phy_pix_clk; TYPE_1__ timing; int /*<<< orphan*/  signal; } ;

/* Variables and functions */
 scalar_t__ TIMING_3D_FORMAT_HW_FRAME_PACKING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct dc_stream_state *stream)
{
	/* update actual pixel clock on all streams */
	if (FUNC0(stream->signal))
		stream->phy_pix_clk = FUNC1(
			&stream->timing) / 10;
	else
		stream->phy_pix_clk =
			stream->timing.pix_clk_100hz / 10;

	if (stream->timing.timing_3d_format == TIMING_3D_FORMAT_HW_FRAME_PACKING)
		stream->phy_pix_clk *= 2;
}