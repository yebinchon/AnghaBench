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
struct ssi_protocol {unsigned int send_state; int /*<<< orphan*/  tx_wd; int /*<<< orphan*/  keep_alive; int /*<<< orphan*/  recv_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RECV_IDLE ; 
#define  SENDING 132 
#define  SENDING_SWBREAK 131 
#define  SEND_IDLE 130 
#define  SEND_READY 129 
 int /*<<< orphan*/  SSIP_KATOUT ; 
 int /*<<< orphan*/  SSIP_WDTOUT ; 
#define  WAIT4READY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ssi_protocol *ssi, unsigned int state)
{
	ssi->send_state = state;
	switch (state) {
	case SEND_IDLE:
	case SEND_READY:
		FUNC0(&ssi->tx_wd);
		if (ssi->recv_state == RECV_IDLE)
			FUNC0(&ssi->keep_alive);
		break;
	case WAIT4READY:
	case SENDING:
	case SENDING_SWBREAK:
		FUNC1(&ssi->keep_alive,
				jiffies + FUNC2(SSIP_KATOUT));
		FUNC1(&ssi->tx_wd, jiffies + FUNC2(SSIP_WDTOUT));
		break;
	default:
		break;
	}
}