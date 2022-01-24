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
struct TYPE_6__ {size_t channels; } ;
struct TYPE_5__ {size_t channels; } ;
struct omap_ssi_port {int /*<<< orphan*/  pdev; int /*<<< orphan*/  lock; struct list_head* rxqueue; TYPE_3__ ssr; struct list_head* txqueue; TYPE_2__ sst; } ;
struct list_head {int dummy; } ;
struct hsi_port {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int nents; } ;
struct hsi_msg {size_t channel; int /*<<< orphan*/  ttype; int /*<<< orphan*/  status; int /*<<< orphan*/  link; scalar_t__ break_frame; TYPE_1__ sgt; int /*<<< orphan*/  cl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSYS ; 
 int /*<<< orphan*/  HSI_STATUS_ERROR ; 
 int /*<<< orphan*/  HSI_STATUS_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct hsi_port* FUNC2 (int /*<<< orphan*/ ) ; 
 struct omap_ssi_port* FUNC3 (struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct hsi_msg*) ; 
 int FUNC12 (struct list_head*) ; 

__attribute__((used)) static int FUNC13(struct hsi_msg *msg)
{
	struct hsi_port *port = FUNC2(msg->cl);
	struct omap_ssi_port *omap_port = FUNC3(port);
	struct list_head *queue;
	int err = 0;

	FUNC0(!msg);

	if (msg->sgt.nents > 1)
		return -ENOSYS; /* TODO: Add sg support */

	if (msg->break_frame)
		return FUNC11(msg);

	if (msg->ttype) {
		FUNC0(msg->channel >= omap_port->sst.channels);
		queue = &omap_port->txqueue[msg->channel];
	} else {
		FUNC0(msg->channel >= omap_port->ssr.channels);
		queue = &omap_port->rxqueue[msg->channel];
	}
	msg->status = HSI_STATUS_QUEUED;

	FUNC6(omap_port->pdev);
	FUNC9(&omap_port->lock);
	FUNC4(&msg->link, queue);
	err = FUNC12(queue);
	if (err < 0) {
		FUNC5(&msg->link);
		msg->status = HSI_STATUS_ERROR;
	}
	FUNC10(&omap_port->lock);
	FUNC7(omap_port->pdev);
	FUNC8(omap_port->pdev);
	FUNC1(&port->device, "msg status %d ttype %d ch %d\n",
				msg->status, msg->ttype, msg->channel);

	return err;
}