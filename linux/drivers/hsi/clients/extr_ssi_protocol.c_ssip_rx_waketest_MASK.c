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
typedef  int /*<<< orphan*/  u32 ;
struct ssi_protocol {scalar_t__ main_state; int /*<<< orphan*/  netdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_wd; int /*<<< orphan*/  flags; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ ACTIVE ; 
 scalar_t__ HANDSHAKE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SSIP_WAKETEST_FAILED ; 
 int /*<<< orphan*/  SSIP_WAKETEST_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 struct ssi_protocol* FUNC4 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hsi_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hsi_client*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct hsi_client *cl, u32 cmd)
{
	struct ssi_protocol *ssi = FUNC4(cl);
	unsigned int wkres = FUNC0(cmd);

	FUNC7(&ssi->lock);
	if (ssi->main_state != HANDSHAKE) {
		FUNC2(&cl->device, "wake lines test ignored M(%d)\n",
							ssi->main_state);
		FUNC8(&ssi->lock);
		return;
	}
	FUNC8(&ssi->lock);

	if (FUNC11(SSIP_WAKETEST_FLAG, &ssi->flags))
		FUNC9(cl, 0); /* FIXME: To be removed */

	FUNC7(&ssi->lock);
	ssi->main_state = ACTIVE;
	FUNC1(&ssi->tx_wd); /* Stop boot handshake timer */
	FUNC8(&ssi->lock);

	FUNC3(&cl->device, "WAKELINES TEST %s\n",
				wkres & SSIP_WAKETEST_FAILED ? "FAILED" : "OK");
	if (wkres & SSIP_WAKETEST_FAILED) {
		FUNC10(cl);
		return;
	}
	FUNC2(&cl->device, "CMT is ONLINE\n");
	FUNC6(ssi->netdev);
	FUNC5(ssi->netdev);
}