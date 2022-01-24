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
struct intel_guc_client {int /*<<< orphan*/  stage_id; int /*<<< orphan*/  guc; int /*<<< orphan*/  doorbell_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  GUC_DOORBELL_INVALID ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc_client*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_guc_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_guc_client*) ; 

__attribute__((used)) static int FUNC7(struct intel_guc_client *client)
{
	int ret;

	if (FUNC1(!FUNC6(client)))
		return -ENODEV; /* internal setup error, should never happen */

	FUNC5(client, client->doorbell_id);
	FUNC4(client);

	ret = FUNC3(client->guc, client->stage_id);
	if (ret) {
		FUNC2(client);
		FUNC5(client, GUC_DOORBELL_INVALID);
		FUNC0("Couldn't create client %u doorbell: %d\n",
				 client->stage_id, ret);
		return ret;
	}

	return 0;
}