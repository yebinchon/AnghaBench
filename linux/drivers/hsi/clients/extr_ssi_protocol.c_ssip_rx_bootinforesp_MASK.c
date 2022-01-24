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
struct ssi_protocol {scalar_t__ main_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_wd; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSIP_LOCAL_VERID ; 
 int /*<<< orphan*/  SSIP_WDTOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ssi_protocol* FUNC3 (struct hsi_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hsi_client *cl, u32 cmd)
{
	struct ssi_protocol *ssi = FUNC3(cl);

	if (FUNC0(cmd) != SSIP_LOCAL_VERID)
		FUNC2(&cl->device, "boot info resp verid mismatch\n");

	FUNC6(&ssi->lock);
	if (ssi->main_state != ACTIVE)
		/* Use tx_wd as a boot watchdog in non ACTIVE state */
		FUNC4(&ssi->tx_wd, jiffies + FUNC5(SSIP_WDTOUT));
	else
		FUNC1(&cl->device, "boot info resp ignored M(%d)\n",
							ssi->main_state);
	FUNC7(&ssi->lock);
}