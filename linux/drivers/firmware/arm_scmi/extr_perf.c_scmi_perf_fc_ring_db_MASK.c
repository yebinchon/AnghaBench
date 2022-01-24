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
typedef  int u64 ;
struct scmi_fc_db_info {int width; int mask; int /*<<< orphan*/  addr; int /*<<< orphan*/  set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct scmi_fc_db_info *db)
{
	if (!db || !db->addr)
		return;

	if (db->width == 1)
		FUNC0(8);
	else if (db->width == 2)
		FUNC0(16);
	else if (db->width == 4)
		FUNC0(32);
	else /* db->width == 8 */
#ifdef CONFIG_64BIT
		SCMI_PERF_FC_RING_DB(64);
#else
	{
		u64 val = 0;

		if (db->mask)
			val = FUNC1(db->addr) & db->mask;
		FUNC2(db->set, db->addr);
	}
#endif
}