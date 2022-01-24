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
 scalar_t__ SEND_IDLE ; 
 int /*<<< orphan*/  WAIT4READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ssi_protocol* FUNC3 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 

int FUNC8(struct hsi_client *master)
{
	struct ssi_protocol *ssi = FUNC3(master);

	FUNC2(&master->device, "start TX %d\n", FUNC1(&ssi->tx_usecnt));
	FUNC5(&ssi->lock);
	if (ssi->send_state == SEND_IDLE) {
		FUNC7(ssi, WAIT4READY);
		FUNC4(master);
	}
	FUNC6(&ssi->lock);
	FUNC0(&ssi->tx_usecnt);

	return 0;
}