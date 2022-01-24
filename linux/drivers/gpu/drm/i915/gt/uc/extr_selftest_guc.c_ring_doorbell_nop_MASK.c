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
struct intel_guc_client {int use_nop_wqi; int /*<<< orphan*/  doorbell_id; int /*<<< orphan*/  wq_lock; } ;
struct guc_process_desc {scalar_t__ wq_status; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WQ_STATUS_ACTIVE ; 
 struct guc_process_desc* FUNC1 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct intel_guc_client *client)
{
	struct guc_process_desc *desc = FUNC1(client);
	int err;

	client->use_nop_wqi = true;

	FUNC5(&client->wq_lock);

	FUNC3(client, 0, 0, 0, 0);
	FUNC2(client);

	FUNC6(&client->wq_lock);

	client->use_nop_wqi = false;

	/* if there are no issues GuC will update the WQ head and keep the
	 * WQ in active status
	 */
	err = FUNC7(FUNC0(desc->head) == FUNC0(desc->tail), 10);
	if (err) {
		FUNC4("doorbell %u ring failed!\n", client->doorbell_id);
		return -EIO;
	}

	if (desc->wq_status != WQ_STATUS_ACTIVE) {
		FUNC4("doorbell %u ring put WQ in bad state (%u)!\n",
		       client->doorbell_id, desc->wq_status);
		return -EIO;
	}

	return 0;
}