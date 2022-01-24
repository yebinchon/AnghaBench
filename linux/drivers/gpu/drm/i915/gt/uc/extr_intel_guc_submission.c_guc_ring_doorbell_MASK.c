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
typedef  scalar_t__ u32 ;
struct intel_guc_client {int /*<<< orphan*/  wq_lock; } ;
struct guc_doorbell_info {scalar_t__ db_status; int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ GUC_DOORBELL_ENABLED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct guc_doorbell_info* FUNC3 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct intel_guc_client *client)
{
	struct guc_doorbell_info *db;
	u32 cookie;

	FUNC4(&client->wq_lock);

	/* pointer of current doorbell cacheline */
	db = FUNC3(client);

	/*
	 * We're not expecting the doorbell cookie to change behind our back,
	 * we also need to treat 0 as a reserved value.
	 */
	cookie = FUNC1(db->cookie);
	FUNC2(FUNC5(&db->cookie, cookie + 1 ?: cookie + 2) != cookie);

	/* XXX: doorbell was lost and need to acquire it again */
	FUNC0(db->db_status != GUC_DOORBELL_ENABLED);
}