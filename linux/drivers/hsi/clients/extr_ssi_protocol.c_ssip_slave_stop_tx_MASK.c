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
struct ssi_protocol {scalar_t__ send_state; int /*<<< orphan*/  tx_usecnt; int /*<<< orphan*/  lock; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_IDLE ; 
 scalar_t__ SEND_READY ; 
 scalar_t__ WAIT4READY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct ssi_protocol* FUNC4 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 

int FUNC9(struct hsi_client *master)
{
	struct ssi_protocol *ssi = FUNC4(master);

	FUNC0(FUNC2(&ssi->tx_usecnt) == 0);

	if (FUNC1(&ssi->tx_usecnt)) {
		FUNC6(&ssi->lock);
		if ((ssi->send_state == SEND_READY) ||
			(ssi->send_state == WAIT4READY)) {
			FUNC8(ssi, SEND_IDLE);
			FUNC5(master);
		}
		FUNC7(&ssi->lock);
	}
	FUNC3(&master->device, "stop TX %d\n", FUNC2(&ssi->tx_usecnt));

	return 0;
}