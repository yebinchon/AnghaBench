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
struct ssi_protocol {scalar_t__ main_state; scalar_t__ send_state; int /*<<< orphan*/  lock; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ ACTIVE ; 
 int /*<<< orphan*/  SEND_READY ; 
 scalar_t__ WAIT4READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct ssi_protocol* FUNC1 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_client*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct hsi_client *cl)
{
	struct ssi_protocol *ssi = FUNC1(cl);

	FUNC2(&ssi->lock);
	if (FUNC6(ssi->main_state != ACTIVE)) {
		FUNC0(&cl->device, "READY on wrong state: S(%d) M(%d)\n",
					ssi->send_state, ssi->main_state);
		FUNC3(&ssi->lock);
		return;
	}
	if (ssi->send_state != WAIT4READY) {
		FUNC0(&cl->device, "Ignore spurious READY command\n");
		FUNC3(&ssi->lock);
		return;
	}
	FUNC4(ssi, SEND_READY);
	FUNC3(&ssi->lock);
	FUNC5(cl);
}