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
typedef  int u32 ;
struct mipi_dsi_packet {int* header; int* payload; scalar_t__ payload_length; } ;
struct mipi_dsi_msg {int flags; int /*<<< orphan*/  rx_len; int /*<<< orphan*/  rx_buf; } ;
struct mipi_dsi_host {int dummy; } ;
struct intel_dsi_host {int port; TYPE_3__* intel_dsi; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int const GEN_READ_DATA_AVAIL ; 
 int HS_CTRL_FIFO_FULL ; 
 int HS_DATA_FIFO_FULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int LP_CTRL_FIFO_FULL ; 
 int LP_DATA_FIFO_FULL ; 
 int MIPI_DSI_MSG_USE_LPM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (struct mipi_dsi_packet*,struct mipi_dsi_msg const*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC12 (struct drm_device*) ; 
 struct intel_dsi_host* FUNC13 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*,int /*<<< orphan*/ ,int*,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC15(struct mipi_dsi_host *host,
				       const struct mipi_dsi_msg *msg)
{
	struct intel_dsi_host *intel_dsi_host = FUNC13(host);
	struct drm_device *dev = intel_dsi_host->intel_dsi->base.base.dev;
	struct drm_i915_private *dev_priv = FUNC12(dev);
	enum port port = intel_dsi_host->port;
	struct mipi_dsi_packet packet;
	ssize_t ret;
	const u8 *header, *data;
	i915_reg_t data_reg, ctrl_reg;
	u32 data_mask, ctrl_mask;

	ret = FUNC10(&packet, msg);
	if (ret < 0)
		return ret;

	header = packet.header;
	data = packet.payload;

	if (msg->flags & MIPI_DSI_MSG_USE_LPM) {
		data_reg = FUNC7(port);
		data_mask = LP_DATA_FIFO_FULL;
		ctrl_reg = FUNC6(port);
		ctrl_mask = LP_CTRL_FIFO_FULL;
	} else {
		data_reg = FUNC4(port);
		data_mask = HS_DATA_FIFO_FULL;
		ctrl_reg = FUNC3(port);
		ctrl_mask = HS_CTRL_FIFO_FULL;
	}

	/* note: this is never true for reads */
	if (packet.payload_length) {
		if (FUNC8(dev_priv, FUNC2(port),
					    data_mask, 50))
			FUNC0("Timeout waiting for HS/LP DATA FIFO !full\n");

		FUNC14(dev_priv, data_reg, packet.payload,
			   packet.payload_length);
	}

	if (msg->rx_len) {
		FUNC1(FUNC5(port), GEN_READ_DATA_AVAIL);
	}

	if (FUNC8(dev_priv, FUNC2(port),
				    ctrl_mask, 50)) {
		FUNC0("Timeout waiting for HS/LP CTRL FIFO !full\n");
	}

	FUNC1(ctrl_reg, header[2] << 16 | header[1] << 8 | header[0]);

	/* ->rx_len is set only for reads */
	if (msg->rx_len) {
		data_mask = GEN_READ_DATA_AVAIL;
		if (FUNC9(dev_priv, FUNC5(port),
					  data_mask, 50))
			FUNC0("Timeout waiting for read data.\n");

		FUNC11(dev_priv, data_reg, msg->rx_buf, msg->rx_len);
	}

	/* XXX: fix for reads and writes */
	return 4 + packet.payload_length;
}