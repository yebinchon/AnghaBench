#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct omap_ssi_port {int /*<<< orphan*/  pdev; } ;
struct omap_ssi_controller {scalar_t__ sys; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct hsi_port {int /*<<< orphan*/  num; TYPE_1__ device; } ;
struct hsi_msg {scalar_t__ ttype; int /*<<< orphan*/  status; scalar_t__ actual_len; int /*<<< orphan*/  channel; int /*<<< orphan*/  cl; } ;
struct hsi_controller {int dummy; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 scalar_t__ HSI_MSG_WRITE ; 
 int /*<<< orphan*/  HSI_STATUS_PROCEEDING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SSI_ERROROCCURED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct omap_ssi_controller* FUNC5 (struct hsi_controller*) ; 
 struct hsi_port* FUNC6 (int /*<<< orphan*/ ) ; 
 struct omap_ssi_port* FUNC7 (struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 struct hsi_controller* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct hsi_msg *msg)
{
	struct hsi_port *port = FUNC6(msg->cl);
	struct omap_ssi_port *omap_port = FUNC7(port);
	struct hsi_controller *ssi = FUNC12(port->device.parent);
	struct omap_ssi_controller *omap_ssi = FUNC5(ssi);
	u32 val;

	FUNC9(omap_port->pdev);

	if (!FUNC8(omap_port->pdev)) {
		FUNC4(&port->device, "ssi_start_pio called without runtime PM!\n");
		FUNC10(omap_port->pdev);
		return -EREMOTEIO;
	}

	if (msg->ttype == HSI_MSG_WRITE) {
		val = FUNC0(msg->channel);
		/* Hold clocks for pio writes */
		FUNC9(omap_port->pdev);
	} else {
		val = FUNC1(msg->channel) | SSI_ERROROCCURED;
	}
	FUNC3(&port->device, "Single %s transfer\n",
						msg->ttype ? "write" : "read");
	val |= FUNC11(omap_ssi->sys + FUNC2(port->num, 0));
	FUNC13(val, omap_ssi->sys + FUNC2(port->num, 0));
	FUNC10(omap_port->pdev);
	msg->actual_len = 0;
	msg->status = HSI_STATUS_PROCEEDING;

	return 0;
}