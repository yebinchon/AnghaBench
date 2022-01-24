#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ full; } ;
struct dce8_wm_params {int disp_clk; int num_heads; int vtaps; int bytes_per_pixel; int src_width; int active_time; scalar_t__ interlaced; TYPE_1__ vsc; } ;
struct TYPE_7__ {scalar_t__ full; } ;
typedef  TYPE_2__ fixed20_12 ;

/* Variables and functions */
 int FUNC0 (struct dce8_wm_params*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (TYPE_2__,TYPE_2__) ; 
 int FUNC3 (TYPE_2__) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static u32 FUNC6(struct dce8_wm_params *wm)
{
	/* First calculate the latency in ns */
	u32 mc_latency = 2000; /* 2000 ns. */
	u32 available_bandwidth = FUNC0(wm);
	u32 worst_chunk_return_time = (512 * 8 * 1000) / available_bandwidth;
	u32 cursor_line_pair_return_time = (128 * 4 * 1000) / available_bandwidth;
	u32 dc_latency = 40000000 / wm->disp_clk; /* dc pipe latency */
	u32 other_heads_data_return_time = ((wm->num_heads + 1) * worst_chunk_return_time) +
		(wm->num_heads * cursor_line_pair_return_time);
	u32 latency = mc_latency + other_heads_data_return_time + dc_latency;
	u32 max_src_lines_per_dst_line, lb_fill_bw, line_fill_time;
	u32 tmp, dmif_size = 12288;
	fixed20_12 a, b, c;

	if (wm->num_heads == 0)
		return 0;

	a.full = FUNC1(2);
	b.full = FUNC1(1);
	if ((wm->vsc.full > a.full) ||
	    ((wm->vsc.full > b.full) && (wm->vtaps >= 3)) ||
	    (wm->vtaps >= 5) ||
	    ((wm->vsc.full >= a.full) && wm->interlaced))
		max_src_lines_per_dst_line = 4;
	else
		max_src_lines_per_dst_line = 2;

	a.full = FUNC1(available_bandwidth);
	b.full = FUNC1(wm->num_heads);
	a.full = FUNC2(a, b);
	tmp = FUNC4((u64) dmif_size * (u64) wm->disp_clk, mc_latency + 512);
	tmp = FUNC5(FUNC3(a), tmp);

	lb_fill_bw = FUNC5(tmp, wm->disp_clk * wm->bytes_per_pixel / 1000);

	a.full = FUNC1(max_src_lines_per_dst_line * wm->src_width * wm->bytes_per_pixel);
	b.full = FUNC1(1000);
	c.full = FUNC1(lb_fill_bw);
	b.full = FUNC2(c, b);
	a.full = FUNC2(a, b);
	line_fill_time = FUNC3(a);

	if (line_fill_time < wm->active_time)
		return latency;
	else
		return latency + (line_fill_time - wm->active_time);

}