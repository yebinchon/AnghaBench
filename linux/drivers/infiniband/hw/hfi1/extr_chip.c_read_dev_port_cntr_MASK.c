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
struct hfi1_devdata {int dummy; } ;
struct cntr_entry {int flags; int (* rw_cntr ) (struct cntr_entry*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR ; 
 int CNTR_32BIT ; 
 int CNTR_32BIT_MAX ; 
 int CNTR_DISABLED ; 
 int CNTR_MAX ; 
 int /*<<< orphan*/  CNTR_MODE_R ; 
 int CNTR_SYNTH ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct cntr_entry*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC3(struct hfi1_devdata *dd, struct cntr_entry *entry,
			      u64 *psval, void *context, int vl)
{
	u64 val;
	u64 sval = *psval;

	if (entry->flags & CNTR_DISABLED) {
		FUNC0(dd, "Counter %s not enabled", entry->name);
		return 0;
	}

	FUNC1(CNTR, "cntr: %s vl %d psval 0x%llx", entry->name, vl, *psval);

	val = entry->rw_cntr(entry, context, vl, CNTR_MODE_R, 0);

	/* If its a synthetic counter there is more work we need to do */
	if (entry->flags & CNTR_SYNTH) {
		if (sval == CNTR_MAX) {
			/* No need to read already saturated */
			return CNTR_MAX;
		}

		if (entry->flags & CNTR_32BIT) {
			/* 32bit counters can wrap multiple times */
			u64 upper = sval >> 32;
			u64 lower = (sval << 32) >> 32;

			if (lower > val) { /* hw wrapped */
				if (upper == CNTR_32BIT_MAX)
					val = CNTR_MAX;
				else
					upper++;
			}

			if (val != CNTR_MAX)
				val = (upper << 32) | val;

		} else {
			/* If we rolled we are saturated */
			if ((val < sval) || (val > CNTR_MAX))
				val = CNTR_MAX;
		}
	}

	*psval = val;

	FUNC1(CNTR, "\tNew val=0x%llx", val);

	return val;
}