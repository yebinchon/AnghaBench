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
struct intel_guc {int /*<<< orphan*/  doorbell_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ GUC_NUM_DOORBELLS ; 
 int FUNC2 (struct intel_guc*,scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct intel_guc *guc, u16 db_id)
{
	bool valid;

	FUNC1(db_id >= GUC_NUM_DOORBELLS);

	valid = FUNC2(guc, db_id);

	if (FUNC3(db_id, guc->doorbell_bitmap) == valid)
		return true;

	FUNC0("Doorbell %u has unexpected state: valid=%s\n",
			 db_id, FUNC4(valid));

	return false;
}