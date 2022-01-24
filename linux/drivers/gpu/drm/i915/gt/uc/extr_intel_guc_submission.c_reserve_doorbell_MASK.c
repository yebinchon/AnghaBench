#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u16 ;
struct intel_guc_client {unsigned long doorbell_id; int /*<<< orphan*/  stage_id; TYPE_1__* guc; } ;
struct TYPE_2__ {int /*<<< orphan*/  doorbell_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long GUC_DOORBELL_INVALID ; 
 int GUC_NUM_DOORBELLS ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct intel_guc_client *client)
{
	unsigned long offset;
	unsigned long end;
	u16 id;

	FUNC1(client->doorbell_id != GUC_DOORBELL_INVALID);

	/*
	 * The bitmap tracks which doorbell registers are currently in use.
	 * It is split into two halves; the first half is used for normal
	 * priority contexts, the second half for high-priority ones.
	 */
	offset = 0;
	end = GUC_NUM_DOORBELLS / 2;
	if (FUNC4(client)) {
		offset = end;
		end += offset;
	}

	id = FUNC3(client->guc->doorbell_bitmap, end, offset);
	if (id == end)
		return -ENOSPC;

	FUNC2(id, client->guc->doorbell_bitmap);
	client->doorbell_id = id;
	FUNC0("client %u (high prio=%s) reserved doorbell: %d\n",
			 client->stage_id, FUNC5(FUNC4(client)),
			 id);
	return 0;
}