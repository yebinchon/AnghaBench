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
struct intel_guc_client {int /*<<< orphan*/  guc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc_client*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_guc_client *client)
{
	/*
	 * By the time we're here, GuC may have already been reset. if that is
	 * the case, instead of trying (in vain) to communicate with it, let's
	 * just cleanup the doorbell HW and our internal state.
	 */
	if (FUNC4(client->guc))
		FUNC1(client);
	else
		FUNC0(client);

	FUNC3(client);
	FUNC2(client);
}