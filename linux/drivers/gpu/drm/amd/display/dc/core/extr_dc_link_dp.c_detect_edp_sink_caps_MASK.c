#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  supported_link_rates ;
struct TYPE_10__ {scalar_t__ link_rate; } ;
struct TYPE_6__ {scalar_t__ raw; } ;
struct TYPE_9__ {size_t edp_supported_link_rates_count; int* edp_supported_link_rates; TYPE_1__ dpcd_rev; } ;
struct dc_link {TYPE_5__ reported_link_cap; TYPE_5__ verified_link_cap; TYPE_4__ dpcd_caps; TYPE_3__* dc; } ;
typedef  enum dc_link_rate { ____Placeholder_dc_link_rate } dc_link_rate ;
struct TYPE_7__ {scalar_t__ optimize_edp_link_rate; } ;
struct TYPE_8__ {TYPE_2__ config; } ;

/* Variables and functions */
 scalar_t__ DPCD_REV_14 ; 
 int /*<<< orphan*/  DP_SUPPORTED_LINK_RATES ; 
 scalar_t__ LINK_RATE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct dc_link*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_link*) ; 

void FUNC4(struct dc_link *link)
{
	uint8_t supported_link_rates[16];
	uint32_t entry;
	uint32_t link_rate_in_khz;
	enum dc_link_rate link_rate = LINK_RATE_UNKNOWN;

	FUNC3(link);
	link->dpcd_caps.edp_supported_link_rates_count = 0;
	FUNC2(supported_link_rates, 0, sizeof(supported_link_rates));

	if (link->dpcd_caps.dpcd_rev.raw >= DPCD_REV_14 &&
			(link->dc->config.optimize_edp_link_rate ||
			link->reported_link_cap.link_rate == LINK_RATE_UNKNOWN)) {
		// Read DPCD 00010h - 0001Fh 16 bytes at one shot
		FUNC0(link, DP_SUPPORTED_LINK_RATES,
							supported_link_rates, sizeof(supported_link_rates));

		for (entry = 0; entry < 16; entry += 2) {
			// DPCD register reports per-lane link rate = 16-bit link rate capability
			// value X 200 kHz. Need multiplier to find link rate in kHz.
			link_rate_in_khz = (supported_link_rates[entry+1] * 0x100 +
										supported_link_rates[entry]) * 200;

			if (link_rate_in_khz != 0) {
				link_rate = FUNC1(link_rate_in_khz);
				link->dpcd_caps.edp_supported_link_rates[link->dpcd_caps.edp_supported_link_rates_count] = link_rate;
				link->dpcd_caps.edp_supported_link_rates_count++;

				if (link->reported_link_cap.link_rate < link_rate)
					link->reported_link_cap.link_rate = link_rate;
			}
		}
	}
	link->verified_link_cap = link->reported_link_cap;
}