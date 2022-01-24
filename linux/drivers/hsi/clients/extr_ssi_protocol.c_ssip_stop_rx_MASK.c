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
struct ssi_protocol {scalar_t__ main_state; int /*<<< orphan*/  lock; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ ACTIVE ; 
 int /*<<< orphan*/  RECV_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct ssi_protocol* FUNC1 (struct hsi_client*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hsi_client *cl)
{
	struct ssi_protocol *ssi = FUNC1(cl);

	FUNC0(&cl->device, "RX stop M(%d)\n", ssi->main_state);
	FUNC3(&ssi->lock);
	if (FUNC2(ssi->main_state == ACTIVE))
		FUNC5(ssi, RECV_IDLE);
	FUNC4(&ssi->lock);
}