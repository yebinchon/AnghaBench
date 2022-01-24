#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int link_active; } ;
struct TYPE_7__ {scalar_t__ stream_count; } ;
struct dc_link {TYPE_2__ link_status; TYPE_3__ mst_stream_alloc_table; TYPE_4__* link_enc; } ;
typedef  enum signal_type { ____Placeholder_signal_type } signal_type ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* disable_output ) (TYPE_4__*,int) ;} ;

/* Variables and functions */
 int SIGNAL_TYPE_DISPLAY_PORT_MST ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_link*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_link*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dc_link*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_link*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 

__attribute__((used)) static void FUNC7(struct dc_link *link, enum signal_type signal)
{
	/*
	 * TODO: implement call for dp_set_hw_test_pattern
	 * it is needed for compliance testing
	 */

	/* here we need to specify that encoder output settings
	 * need to be calculated as for the set mode,
	 * it will lead to querying dynamic link capabilities
	 * which should be done before enable output */

	if (FUNC0(signal)) {
		/* SST DP, eDP */
		if (FUNC1(signal))
			FUNC2(link, signal);
		else
			FUNC3(link, signal);
#ifdef CONFIG_DRM_AMD_DC_DSC_SUPPORT

		if (dc_is_dp_sst_signal(signal) ||
				link->mst_stream_alloc_table.stream_count == 0) {
			dp_set_fec_enable(link, false);
			dp_set_fec_ready(link, false);
		}
#endif
	} else
		link->link_enc->funcs->disable_output(link->link_enc, signal);

	if (signal == SIGNAL_TYPE_DISPLAY_PORT_MST) {
		/* MST disable link only when no stream use the link */
		if (link->mst_stream_alloc_table.stream_count <= 0)
			link->link_status.link_active = false;
	} else {
		link->link_status.link_active = false;
	}
}