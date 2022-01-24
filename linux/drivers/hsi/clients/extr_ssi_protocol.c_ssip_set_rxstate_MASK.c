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
struct ssi_protocol {unsigned int recv_state; int /*<<< orphan*/  rx_wd; int /*<<< orphan*/  keep_alive; int /*<<< orphan*/  tx_usecnt; int /*<<< orphan*/  send_state; } ;

/* Variables and functions */
#define  RECEIVING 130 
#define  RECV_IDLE 129 
#define  RECV_READY 128 
 int /*<<< orphan*/  SEND_IDLE ; 
 int /*<<< orphan*/  SSIP_KATOUT ; 
 int /*<<< orphan*/  SSIP_WDTOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ssi_protocol *ssi, unsigned int state)
{
	ssi->recv_state = state;
	switch (state) {
	case RECV_IDLE:
		FUNC1(&ssi->rx_wd);
		if (ssi->send_state == SEND_IDLE)
			FUNC1(&ssi->keep_alive);
		break;
	case RECV_READY:
		/* CMT speech workaround */
		if (FUNC0(&ssi->tx_usecnt))
			break;
		/* Else, fall through */
	case RECEIVING:
		FUNC2(&ssi->keep_alive, jiffies +
						FUNC3(SSIP_KATOUT));
		FUNC2(&ssi->rx_wd, jiffies + FUNC3(SSIP_WDTOUT));
		break;
	default:
		break;
	}
}