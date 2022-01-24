#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct mipi_dsi_device {int channel; int /*<<< orphan*/  mode_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_dsi {int ports; TYPE_3__** dsi_hosts; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_6__ {struct mipi_dsi_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct drm_i915_private*) ; 
#define  MIPI_DSI_DCS_LONG_WRITE 138 
#define  MIPI_DSI_DCS_READ 137 
#define  MIPI_DSI_DCS_SHORT_WRITE 136 
#define  MIPI_DSI_DCS_SHORT_WRITE_PARAM 135 
#define  MIPI_DSI_GENERIC_LONG_WRITE 134 
#define  MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM 133 
#define  MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM 132 
#define  MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM 131 
#define  MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM 130 
#define  MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM 129 
#define  MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM 128 
 int /*<<< orphan*/  MIPI_DSI_MODE_LPM ; 
 int MIPI_PORT_SHIFT ; 
 int MIPI_TRANSFER_MODE_SHIFT ; 
 int MIPI_VIRTUAL_CHANNEL_SHIFT ; 
 int PORT_C ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mipi_dsi_device*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mipi_dsi_device*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dsi*,int) ; 

__attribute__((used)) static const u8 *FUNC9(struct intel_dsi *intel_dsi,
				       const u8 *data)
{
	struct drm_i915_private *dev_priv = FUNC7(intel_dsi->base.base.dev);
	struct mipi_dsi_device *dsi_device;
	u8 type, flags, seq_port;
	u16 len;
	enum port port;

	FUNC1("\n");

	flags = *data++;
	type = *data++;

	len = *((u16 *) data);
	data += 2;

	seq_port = (flags >> MIPI_PORT_SHIFT) & 3;

	/* For DSI single link on Port A & C, the seq_port value which is
	 * parsed from Sequence Block#53 of VBT has been set to 0
	 * Now, read/write of packets for the DSI single link on Port A and
	 * Port C will based on the DVO port from VBT block 2.
	 */
	if (intel_dsi->ports == (1 << PORT_C))
		port = PORT_C;
	else
		port = FUNC3(seq_port);

	dsi_device = intel_dsi->dsi_hosts[port]->device;
	if (!dsi_device) {
		FUNC1("no dsi device for port %c\n", FUNC6(port));
		goto out;
	}

	if ((flags >> MIPI_TRANSFER_MODE_SHIFT) & 1)
		dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;
	else
		dsi_device->mode_flags |= MIPI_DSI_MODE_LPM;

	dsi_device->channel = (flags >> MIPI_VIRTUAL_CHANNEL_SHIFT) & 3;

	switch (type) {
	case MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM:
		FUNC5(dsi_device, NULL, 0);
		break;
	case MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM:
		FUNC5(dsi_device, data, 1);
		break;
	case MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM:
		FUNC5(dsi_device, data, 2);
		break;
	case MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM:
	case MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM:
	case MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM:
		FUNC0("Generic Read not yet implemented or used\n");
		break;
	case MIPI_DSI_GENERIC_LONG_WRITE:
		FUNC5(dsi_device, data, len);
		break;
	case MIPI_DSI_DCS_SHORT_WRITE:
		FUNC4(dsi_device, data, 1);
		break;
	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
		FUNC4(dsi_device, data, 2);
		break;
	case MIPI_DSI_DCS_READ:
		FUNC0("DCS Read not yet implemented or used\n");
		break;
	case MIPI_DSI_DCS_LONG_WRITE:
		FUNC4(dsi_device, data, len);
		break;
	}

	if (FUNC2(dev_priv) < 11)
		FUNC8(intel_dsi, port);

out:
	data += len;

	return data;
}