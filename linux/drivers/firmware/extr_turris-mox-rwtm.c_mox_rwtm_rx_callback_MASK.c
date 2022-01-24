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
struct armada_37xx_rwtm_rx_msg {int dummy; } ;
struct mox_rwtm {int /*<<< orphan*/  cmd_done; struct armada_37xx_rwtm_rx_msg reply; } ;
struct mbox_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mox_rwtm* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mbox_client *cl, void *data)
{
	struct mox_rwtm *rwtm = FUNC1(cl->dev);
	struct armada_37xx_rwtm_rx_msg *msg = data;

	rwtm->reply = *msg;
	FUNC0(&rwtm->cmd_done);
}