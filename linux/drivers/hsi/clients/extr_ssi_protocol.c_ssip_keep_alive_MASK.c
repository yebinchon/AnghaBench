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
struct timer_list {int dummy; } ;
struct ssi_protocol {scalar_t__ recv_state; int send_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  keep_alive; int /*<<< orphan*/  tx_usecnt; int /*<<< orphan*/  main_state; struct hsi_client* cl; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ RECV_IDLE ; 
#define  SEND_IDLE 129 
#define  SEND_READY 128 
 int /*<<< orphan*/  SSIP_KATOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct ssi_protocol* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  keep_alive ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ssi_protocol* ssi ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct ssi_protocol *ssi = FUNC2(ssi, t, keep_alive);
	struct hsi_client *cl = ssi->cl;

	FUNC1(&cl->device, "Keep alive kick in: m(%d) r(%d) s(%d)\n",
		ssi->main_state, ssi->recv_state, ssi->send_state);

	FUNC5(&ssi->lock);
	if (ssi->recv_state == RECV_IDLE)
		switch (ssi->send_state) {
		case SEND_READY:
			if (FUNC0(&ssi->tx_usecnt) == 0)
				break;
			/* Fall through */
			/*
			 * Workaround for cmt-speech in that case
			 * we relay on audio timers.
			 */
		case SEND_IDLE:
			FUNC6(&ssi->lock);
			return;
		}
	FUNC3(&ssi->keep_alive, jiffies + FUNC4(SSIP_KATOUT));
	FUNC6(&ssi->lock);
}