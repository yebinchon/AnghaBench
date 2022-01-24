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
struct TYPE_6__ {void* mode; } ;
struct TYPE_5__ {void* mode; } ;
struct omap_ssi_port {scalar_t__ wk_refcount; int /*<<< orphan*/  pdev; int /*<<< orphan*/  lock; TYPE_3__ ssr; TYPE_2__ sst; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct hsi_port {int claimed; TYPE_1__ device; } ;
struct hsi_controller {int dummy; } ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 void* SSI_MODE_SLEEP ; 
 int /*<<< orphan*/  SSI_WAKE_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hsi_port* FUNC1 (struct hsi_client*) ; 
 struct omap_ssi_port* FUNC2 (struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hsi_controller*,struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_ssi_port*,void*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hsi_controller* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct hsi_client *cl)
{
	struct hsi_port *port = FUNC1(cl);
	struct omap_ssi_port *omap_port = FUNC2(port);
	struct hsi_controller *ssi = FUNC13(port->device.parent);

	FUNC4(omap_port->pdev);
	FUNC7(&omap_port->lock);
	/* Stop all the pending DMA requests for that client */
	FUNC9(ssi, cl);
	/* Now cleanup all the queues */
	FUNC10(cl);
	/* If it is the last client of the port, do extra checks and cleanup */
	if (port->claimed <= 1) {
		/*
		 * Drop the clock reference for the incoming wake line
		 * if it is still kept high by the other side.
		 */
		if (FUNC12(SSI_WAKE_EN, &omap_port->flags))
			FUNC6(omap_port->pdev);
		FUNC3(omap_port->pdev);
		/* Stop any SSI TX/RX without a client */
		FUNC11(omap_port, SSI_MODE_SLEEP);
		omap_port->sst.mode = SSI_MODE_SLEEP;
		omap_port->ssr.mode = SSI_MODE_SLEEP;
		FUNC5(omap_port->pdev);
		FUNC0(omap_port->wk_refcount != 0);
	}
	FUNC8(&omap_port->lock);
	FUNC6(omap_port->pdev);

	return 0;
}