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
struct display_sink_capability {int signal; void* transaction_type; int /*<<< orphan*/  member_0; } ;
struct dc_sink_init_data {int sink_signal; struct dc_link* link; int /*<<< orphan*/  member_0; } ;
struct dc_sink {int dummy; } ;
struct dc_link {int connector_signal; struct dc_context* ctx; struct dc_sink* local_sink; int /*<<< orphan*/  type; } ;
struct dc_context {int dummy; } ;
typedef  enum dc_edid_status { ____Placeholder_dc_edid_status } dc_edid_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* DDC_TRANSACTION_TYPE_I2C ; 
 void* DDC_TRANSACTION_TYPE_I2C_OVER_AUX ; 
 int EDID_OK ; 
#define  SIGNAL_TYPE_DISPLAY_PORT 133 
#define  SIGNAL_TYPE_DVI_DUAL_LINK 132 
#define  SIGNAL_TYPE_DVI_SINGLE_LINK 131 
#define  SIGNAL_TYPE_EDP 130 
#define  SIGNAL_TYPE_HDMI_TYPE_A 129 
#define  SIGNAL_TYPE_LVDS 128 
 int SIGNAL_TYPE_VIRTUAL ; 
 int /*<<< orphan*/  dc_connection_none ; 
 struct dc_sink* FUNC1 (struct dc_sink_init_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_sink*) ; 
 int FUNC3 (struct dc_context*,struct dc_link*,struct dc_sink*) ; 

__attribute__((used)) static void FUNC4(struct dc_link *link)
{
	struct dc_sink_init_data sink_init_data = { 0 };
	struct display_sink_capability sink_caps = { 0 };
	enum dc_edid_status edid_status;
	struct dc_context *dc_ctx = link->ctx;
	struct dc_sink *sink = NULL;
	struct dc_sink *prev_sink = NULL;

	link->type = dc_connection_none;
	prev_sink = link->local_sink;

	if (prev_sink != NULL)
		FUNC2(prev_sink);

	switch (link->connector_signal) {
	case SIGNAL_TYPE_HDMI_TYPE_A: {
		sink_caps.transaction_type = DDC_TRANSACTION_TYPE_I2C;
		sink_caps.signal = SIGNAL_TYPE_HDMI_TYPE_A;
		break;
	}

	case SIGNAL_TYPE_DVI_SINGLE_LINK: {
		sink_caps.transaction_type = DDC_TRANSACTION_TYPE_I2C;
		sink_caps.signal = SIGNAL_TYPE_DVI_SINGLE_LINK;
		break;
	}

	case SIGNAL_TYPE_DVI_DUAL_LINK: {
		sink_caps.transaction_type = DDC_TRANSACTION_TYPE_I2C;
		sink_caps.signal = SIGNAL_TYPE_DVI_DUAL_LINK;
		break;
	}

	case SIGNAL_TYPE_LVDS: {
		sink_caps.transaction_type = DDC_TRANSACTION_TYPE_I2C;
		sink_caps.signal = SIGNAL_TYPE_LVDS;
		break;
	}

	case SIGNAL_TYPE_EDP: {
		sink_caps.transaction_type =
			DDC_TRANSACTION_TYPE_I2C_OVER_AUX;
		sink_caps.signal = SIGNAL_TYPE_EDP;
		break;
	}

	case SIGNAL_TYPE_DISPLAY_PORT: {
		sink_caps.transaction_type =
			DDC_TRANSACTION_TYPE_I2C_OVER_AUX;
		sink_caps.signal = SIGNAL_TYPE_VIRTUAL;
		break;
	}

	default:
		FUNC0("Invalid connector type! signal:%d\n",
			link->connector_signal);
		return;
	}

	sink_init_data.link = link;
	sink_init_data.sink_signal = sink_caps.signal;

	sink = FUNC1(&sink_init_data);
	if (!sink) {
		FUNC0("Failed to create sink!\n");
		return;
	}

	/* dc_sink_create returns a new reference */
	link->local_sink = sink;

	edid_status = FUNC3(
			link->ctx,
			link,
			sink);

	if (edid_status != EDID_OK)
		FUNC0("Failed to read EDID");

}