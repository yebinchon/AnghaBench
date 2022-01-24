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
struct intel_guc_client {int /*<<< orphan*/  stage_id; int /*<<< orphan*/  guc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GUC_DOORBELL_INVALID ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc_client*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_guc_client*) ; 

__attribute__((used)) static int FUNC6(struct intel_guc_client *client)
{
	int ret;

	FUNC1(!FUNC5(client));

	FUNC2(client);
	ret = FUNC3(client->guc, client->stage_id);
	if (ret)
		FUNC0("Couldn't destroy client %u doorbell: %d\n",
			  client->stage_id, ret);

	FUNC4(client, GUC_DOORBELL_INVALID);

	return ret;
}