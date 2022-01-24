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
struct bw_calcs_vbios {int /*<<< orphan*/  maximum_blackout_recovery_time; int /*<<< orphan*/  blackout_duration; int /*<<< orphan*/  number_of_request_slots_gmc_reserves_for_dmif_per_channel; int /*<<< orphan*/  average_compression_rate; int /*<<< orphan*/  cursor_width; int /*<<< orphan*/  down_spread_percentage; int /*<<< orphan*/  scatter_gather_enable; int /*<<< orphan*/  mcifwrmc_urgent_latency; int /*<<< orphan*/  nbp_state_change_latency; int /*<<< orphan*/  stutter_self_refresh_entry_latency; int /*<<< orphan*/  stutter_self_refresh_exit_latency; int /*<<< orphan*/  dmifmc_urgent_latency; int /*<<< orphan*/  trc; int /*<<< orphan*/  data_return_bus_width; int /*<<< orphan*/  high_voltage_max_phyclk; int /*<<< orphan*/  mid_voltage_max_phyclk; int /*<<< orphan*/  low_voltage_max_phyclk; int /*<<< orphan*/  high_voltage_max_dispclk; int /*<<< orphan*/  mid_voltage_max_dispclk; int /*<<< orphan*/  low_voltage_max_dispclk; int /*<<< orphan*/  high_sclk; int /*<<< orphan*/  mid6_sclk; int /*<<< orphan*/  mid5_sclk; int /*<<< orphan*/  mid4_sclk; int /*<<< orphan*/  mid3_sclk; int /*<<< orphan*/  mid2_sclk; int /*<<< orphan*/  mid1_sclk; int /*<<< orphan*/  low_sclk; int /*<<< orphan*/  high_yclk; int /*<<< orphan*/  mid_yclk; int /*<<< orphan*/  low_yclk; int /*<<< orphan*/  number_of_dram_banks; int /*<<< orphan*/  number_of_dram_channels; int /*<<< orphan*/  dram_channel_width_in_bits; int /*<<< orphan*/  memory_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dc_context *ctx, const struct bw_calcs_vbios *vbios)
{

	FUNC0("#####################################################################");
	FUNC0("struct bw_calcs_vbios vbios");
	FUNC0("#####################################################################");
	FUNC0("	[enum] bw_defines memory_type: %d", vbios->memory_type);
	FUNC0("	[enum] bw_defines memory_type: %d", vbios->memory_type);
	FUNC0("	[uint32_t] dram_channel_width_in_bits: %d", vbios->dram_channel_width_in_bits);
	FUNC0("	[uint32_t] number_of_dram_channels: %d", vbios->number_of_dram_channels);
	FUNC0("	[uint32_t] number_of_dram_banks: %d", vbios->number_of_dram_banks);
	FUNC0("	[bw_fixed] low_yclk: %d", FUNC1(vbios->low_yclk));
	FUNC0("	[bw_fixed] mid_yclk: %d", FUNC1(vbios->mid_yclk));
	FUNC0("	[bw_fixed] high_yclk: %d", FUNC1(vbios->high_yclk));
	FUNC0("	[bw_fixed] low_sclk: %d", FUNC1(vbios->low_sclk));
	FUNC0("	[bw_fixed] mid1_sclk: %d", FUNC1(vbios->mid1_sclk));
	FUNC0("	[bw_fixed] mid2_sclk: %d", FUNC1(vbios->mid2_sclk));
	FUNC0("	[bw_fixed] mid3_sclk: %d", FUNC1(vbios->mid3_sclk));
	FUNC0("	[bw_fixed] mid4_sclk: %d", FUNC1(vbios->mid4_sclk));
	FUNC0("	[bw_fixed] mid5_sclk: %d", FUNC1(vbios->mid5_sclk));
	FUNC0("	[bw_fixed] mid6_sclk: %d", FUNC1(vbios->mid6_sclk));
	FUNC0("	[bw_fixed] high_sclk: %d", FUNC1(vbios->high_sclk));
	FUNC0("	[bw_fixed] low_voltage_max_dispclk: %d",
				FUNC1(vbios->low_voltage_max_dispclk));
	FUNC0("	[bw_fixed] mid_voltage_max_dispclk;: %d",
				FUNC1(vbios->mid_voltage_max_dispclk));
	FUNC0("	[bw_fixed] high_voltage_max_dispclk;: %d",
				FUNC1(vbios->high_voltage_max_dispclk));
	FUNC0("	[bw_fixed] low_voltage_max_phyclk: %d",
				FUNC1(vbios->low_voltage_max_phyclk));
	FUNC0("	[bw_fixed] mid_voltage_max_phyclk: %d",
				FUNC1(vbios->mid_voltage_max_phyclk));
	FUNC0("	[bw_fixed] high_voltage_max_phyclk: %d",
				FUNC1(vbios->high_voltage_max_phyclk));
	FUNC0("	[bw_fixed] data_return_bus_width: %d", FUNC1(vbios->data_return_bus_width));
	FUNC0("	[bw_fixed] trc: %d", FUNC1(vbios->trc));
	FUNC0("	[bw_fixed] dmifmc_urgent_latency: %d", FUNC1(vbios->dmifmc_urgent_latency));
	FUNC0("	[bw_fixed] stutter_self_refresh_exit_latency: %d",
				FUNC1(vbios->stutter_self_refresh_exit_latency));
	FUNC0("	[bw_fixed] stutter_self_refresh_entry_latency: %d",
				FUNC1(vbios->stutter_self_refresh_entry_latency));
	FUNC0("	[bw_fixed] nbp_state_change_latency: %d",
				FUNC1(vbios->nbp_state_change_latency));
	FUNC0("	[bw_fixed] mcifwrmc_urgent_latency: %d",
				FUNC1(vbios->mcifwrmc_urgent_latency));
	FUNC0("	[bool] scatter_gather_enable: %d", vbios->scatter_gather_enable);
	FUNC0("	[bw_fixed] down_spread_percentage: %d",
				FUNC1(vbios->down_spread_percentage));
	FUNC0("	[uint32_t] cursor_width: %d", vbios->cursor_width);
	FUNC0("	[uint32_t] average_compression_rate: %d", vbios->average_compression_rate);
	FUNC0("	[uint32_t] number_of_request_slots_gmc_reserves_for_dmif_per_channel: %d",
				vbios->number_of_request_slots_gmc_reserves_for_dmif_per_channel);
	FUNC0("	[bw_fixed] blackout_duration: %d", FUNC1(vbios->blackout_duration));
	FUNC0("	[bw_fixed] maximum_blackout_recovery_time: %d",
				FUNC1(vbios->maximum_blackout_recovery_time));


}