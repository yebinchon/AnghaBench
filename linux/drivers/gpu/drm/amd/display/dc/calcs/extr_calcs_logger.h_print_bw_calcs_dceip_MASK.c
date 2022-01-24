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
struct dc_context {int dummy; } ;
struct bw_calcs_dceip {int /*<<< orphan*/  dmif_request_buffer_size; int /*<<< orphan*/  mcifwr_all_surfaces_burst_time; int /*<<< orphan*/  display_pipe_throughput_factor; int /*<<< orphan*/  dispclk_ramping_factor; int /*<<< orphan*/  dispclk_per_request; int /*<<< orphan*/  request_efficiency; int /*<<< orphan*/  linear_mode_line_request_alternation_slice; int /*<<< orphan*/  maximum_total_outstanding_pte_requests_allowed_by_saw; int /*<<< orphan*/  minimum_outstanding_pte_request_limit; int /*<<< orphan*/  peak_pte_request_to_eviction_ratio_limiting_single_display_no_rotation; int /*<<< orphan*/  peak_pte_request_to_eviction_ratio_limiting_multiple_displays_or_single_rotated_display; int /*<<< orphan*/  underlay_maximum_height_efficient_for_tiling; int /*<<< orphan*/  underlay_maximum_width_efficient_for_tiling; int /*<<< orphan*/  cursor_dcp_buffer_lines; int /*<<< orphan*/  cursor_chunk_width; int /*<<< orphan*/  underlay422_lb_size_per_component; int /*<<< orphan*/  underlay420_chroma_lb_size_per_component; int /*<<< orphan*/  underlay420_luma_lb_size_per_component; int /*<<< orphan*/  stutter_and_dram_clock_state_change_gated_before_cursor; int /*<<< orphan*/  lb_size_per_component444; int /*<<< orphan*/  lb_write_pixels_per_dispclk; int /*<<< orphan*/  alpha_vscaler_efficiency; int /*<<< orphan*/  graphics_vscaler_efficiency12_bit_per_component; int /*<<< orphan*/  graphics_vscaler_efficiency10_bit_per_component; int /*<<< orphan*/  graphics_vscaler_efficiency8_bit_per_component; int /*<<< orphan*/  graphics_vscaler_efficiency6_bit_per_component; int /*<<< orphan*/  underlay_vscaler_efficiency12_bit_per_component; int /*<<< orphan*/  underlay_vscaler_efficiency10_bit_per_component; int /*<<< orphan*/  scatter_gather_pte_request_rows_in_tiling_mode; int /*<<< orphan*/  display_write_back420_chroma_mcifwr_buffer_size; int /*<<< orphan*/  display_write_back420_luma_mcifwr_buffer_size; int /*<<< orphan*/  scatter_gather_lines_of_pte_prefetching_in_linear_mode; int /*<<< orphan*/  underlay_chroma_dmif_size; int /*<<< orphan*/  underlay_luma_dmif_size; int /*<<< orphan*/  graphics_dmif_size; int /*<<< orphan*/  max_dmif_buffer_allocated; int /*<<< orphan*/  number_of_underlay_pipes; int /*<<< orphan*/  number_of_graphics_pipes; int /*<<< orphan*/  chunk_width; int /*<<< orphan*/  low_power_tiling_mode; int /*<<< orphan*/  lines_interleaved_into_lb; int /*<<< orphan*/  cursor_max_outstanding_group_num; int /*<<< orphan*/  limit_excessive_outstanding_dmif_requests; int /*<<< orphan*/  graphics_lb_nodownscaling_multi_line_prefetching; int /*<<< orphan*/  underlay_downscale_prefetch_enabled; int /*<<< orphan*/  pre_downscaler_enabled; int /*<<< orphan*/  argb_compression_support; int /*<<< orphan*/  display_write_back_supported; int /*<<< orphan*/  dmif_pipe_en_fbc_chunk_tracker; int /*<<< orphan*/  large_cursor; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dc_context *ctx, const struct bw_calcs_dceip *dceip)
{

	FUNC0("#####################################################################");
	FUNC0("struct bw_calcs_dceip");
	FUNC0("#####################################################################");
	FUNC0("	[enum]   bw_calcs_version version %d", dceip->version);
	FUNC0("	[bool] large_cursor: %d", dceip->large_cursor);
	FUNC0("	[bool] dmif_pipe_en_fbc_chunk_tracker: %d", dceip->dmif_pipe_en_fbc_chunk_tracker);
	FUNC0("	[bool] display_write_back_supported: %d", dceip->display_write_back_supported);
	FUNC0("	[bool] argb_compression_support: %d", dceip->argb_compression_support);
	FUNC0("	[bool] pre_downscaler_enabled: %d", dceip->pre_downscaler_enabled);
	FUNC0("	[bool] underlay_downscale_prefetch_enabled: %d",
				dceip->underlay_downscale_prefetch_enabled);
	FUNC0("	[bool] graphics_lb_nodownscaling_multi_line_prefetching: %d",
				dceip->graphics_lb_nodownscaling_multi_line_prefetching);
	FUNC0("	[bool] limit_excessive_outstanding_dmif_requests: %d",
				dceip->limit_excessive_outstanding_dmif_requests);
	FUNC0("	[uint32_t] cursor_max_outstanding_group_num: %d",
				dceip->cursor_max_outstanding_group_num);
	FUNC0("	[uint32_t] lines_interleaved_into_lb: %d", dceip->lines_interleaved_into_lb);
	FUNC0("	[uint32_t] low_power_tiling_mode: %d", dceip->low_power_tiling_mode);
	FUNC0("	[uint32_t] chunk_width: %d", dceip->chunk_width);
	FUNC0("	[uint32_t] number_of_graphics_pipes: %d", dceip->number_of_graphics_pipes);
	FUNC0("	[uint32_t] number_of_underlay_pipes: %d", dceip->number_of_underlay_pipes);
	FUNC0("	[uint32_t] max_dmif_buffer_allocated: %d", dceip->max_dmif_buffer_allocated);
	FUNC0("	[uint32_t] graphics_dmif_size: %d", dceip->graphics_dmif_size);
	FUNC0("	[uint32_t] underlay_luma_dmif_size: %d", dceip->underlay_luma_dmif_size);
	FUNC0("	[uint32_t] underlay_chroma_dmif_size: %d", dceip->underlay_chroma_dmif_size);
	FUNC0("	[uint32_t] scatter_gather_lines_of_pte_prefetching_in_linear_mode: %d",
				dceip->scatter_gather_lines_of_pte_prefetching_in_linear_mode);
	FUNC0("	[uint32_t] display_write_back420_luma_mcifwr_buffer_size: %d",
				dceip->display_write_back420_luma_mcifwr_buffer_size);
	FUNC0("	[uint32_t] display_write_back420_chroma_mcifwr_buffer_size: %d",
				dceip->display_write_back420_chroma_mcifwr_buffer_size);
	FUNC0("	[uint32_t] scatter_gather_pte_request_rows_in_tiling_mode: %d",
				dceip->scatter_gather_pte_request_rows_in_tiling_mode);
	FUNC0("	[bw_fixed] underlay_vscaler_efficiency10_bit_per_component: %d",
				FUNC1(dceip->underlay_vscaler_efficiency10_bit_per_component));
	FUNC0("	[bw_fixed] underlay_vscaler_efficiency12_bit_per_component: %d",
				FUNC1(dceip->underlay_vscaler_efficiency12_bit_per_component));
	FUNC0("	[bw_fixed] graphics_vscaler_efficiency6_bit_per_component: %d",
				FUNC1(dceip->graphics_vscaler_efficiency6_bit_per_component));
	FUNC0("	[bw_fixed] graphics_vscaler_efficiency8_bit_per_component: %d",
				FUNC1(dceip->graphics_vscaler_efficiency8_bit_per_component));
	FUNC0("	[bw_fixed] graphics_vscaler_efficiency10_bit_per_component: %d",
				FUNC1(dceip->graphics_vscaler_efficiency10_bit_per_component));
	FUNC0("	[bw_fixed] graphics_vscaler_efficiency12_bit_per_component: %d",
				FUNC1(dceip->graphics_vscaler_efficiency12_bit_per_component));
	FUNC0("	[bw_fixed] alpha_vscaler_efficiency: %d",
				FUNC1(dceip->alpha_vscaler_efficiency));
	FUNC0("	[bw_fixed] lb_write_pixels_per_dispclk: %d",
				FUNC1(dceip->lb_write_pixels_per_dispclk));
	FUNC0("	[bw_fixed] lb_size_per_component444: %d",
				FUNC1(dceip->lb_size_per_component444));
	FUNC0("	[bw_fixed] stutter_and_dram_clock_state_change_gated_before_cursor: %d",
				FUNC1(dceip->stutter_and_dram_clock_state_change_gated_before_cursor));
	FUNC0("	[bw_fixed] underlay420_luma_lb_size_per_component: %d",
				FUNC1(dceip->underlay420_luma_lb_size_per_component));
	FUNC0("	[bw_fixed] underlay420_chroma_lb_size_per_component: %d",
				FUNC1(dceip->underlay420_chroma_lb_size_per_component));
	FUNC0("	[bw_fixed] underlay422_lb_size_per_component: %d",
				FUNC1(dceip->underlay422_lb_size_per_component));
	FUNC0("	[bw_fixed] cursor_chunk_width: %d", FUNC1(dceip->cursor_chunk_width));
	FUNC0("	[bw_fixed] cursor_dcp_buffer_lines: %d",
				FUNC1(dceip->cursor_dcp_buffer_lines));
	FUNC0("	[bw_fixed] underlay_maximum_width_efficient_for_tiling: %d",
				FUNC1(dceip->underlay_maximum_width_efficient_for_tiling));
	FUNC0("	[bw_fixed] underlay_maximum_height_efficient_for_tiling: %d",
				FUNC1(dceip->underlay_maximum_height_efficient_for_tiling));
	FUNC0("	[bw_fixed] peak_pte_request_to_eviction_ratio_limiting_multiple_displays_or_single_rotated_display: %d",
				FUNC1(dceip->peak_pte_request_to_eviction_ratio_limiting_multiple_displays_or_single_rotated_display));
	FUNC0("	[bw_fixed] peak_pte_request_to_eviction_ratio_limiting_single_display_no_rotation: %d",
				FUNC1(dceip->peak_pte_request_to_eviction_ratio_limiting_single_display_no_rotation));
	FUNC0("	[bw_fixed] minimum_outstanding_pte_request_limit: %d",
				FUNC1(dceip->minimum_outstanding_pte_request_limit));
	FUNC0("	[bw_fixed] maximum_total_outstanding_pte_requests_allowed_by_saw: %d",
				FUNC1(dceip->maximum_total_outstanding_pte_requests_allowed_by_saw));
	FUNC0("	[bw_fixed] linear_mode_line_request_alternation_slice: %d",
				FUNC1(dceip->linear_mode_line_request_alternation_slice));
	FUNC0("	[bw_fixed] request_efficiency: %d", FUNC1(dceip->request_efficiency));
	FUNC0("	[bw_fixed] dispclk_per_request: %d", FUNC1(dceip->dispclk_per_request));
	FUNC0("	[bw_fixed] dispclk_ramping_factor: %d",
				FUNC1(dceip->dispclk_ramping_factor));
	FUNC0("	[bw_fixed] display_pipe_throughput_factor: %d",
				FUNC1(dceip->display_pipe_throughput_factor));
	FUNC0("	[bw_fixed] mcifwr_all_surfaces_burst_time: %d",
				FUNC1(dceip->mcifwr_all_surfaces_burst_time));
	FUNC0("	[bw_fixed] dmif_request_buffer_size: %d",
				FUNC1(dceip->dmif_request_buffer_size));


}