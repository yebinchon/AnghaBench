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
typedef  int /*<<< orphan*/  u16 ;
struct intel_guc_client {int /*<<< orphan*/  guc; int /*<<< orphan*/  doorbell_id; } ;
struct guc_doorbell_info {int /*<<< orphan*/  db_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUC_DOORBELL_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct guc_doorbell_info* FUNC2 (struct intel_guc_client*) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct intel_guc_client *client)
{
	struct guc_doorbell_info *doorbell;
	u16 db_id = client->doorbell_id;

	doorbell = FUNC2(client);
	doorbell->db_status = GUC_DOORBELL_DISABLED;

	/* Doorbell release flow requires that we wait for GEN8_DRB_VALID bit
	 * to go to zero after updating db_status before we call the GuC to
	 * release the doorbell
	 */
	if (FUNC3(!FUNC1(client->guc, db_id), 10))
		FUNC0(true, "Doorbell never became invalid after disable\n");
}