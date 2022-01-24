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
typedef  scalar_t__ u16 ;
struct intel_guc {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ GUC_NUM_DOORBELLS ; 
 int /*<<< orphan*/  FUNC0 (struct intel_guc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct intel_guc *guc)
{
	u16 db_id;

	FUNC2("Max number of doorbells: %d", GUC_NUM_DOORBELLS);
	for (db_id = 0; db_id < GUC_NUM_DOORBELLS; ++db_id) {
		if (!FUNC0(guc, db_id)) {
			FUNC1("doorbell %d, not ok\n", db_id);
			return -EIO;
		}
	}

	return 0;
}