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
struct adb_ids {int nids; int* id; } ;
struct TYPE_2__ {int original_address; int handler_id; void (* handler ) (unsigned char*,int,int) ;} ;

/* Variables and functions */
 TYPE_1__* adb_handler ; 
 int /*<<< orphan*/  adb_handler_lock ; 
 int /*<<< orphan*/  adb_handler_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(int default_id, int handler_id, struct adb_ids *ids,
	     void (*handler)(unsigned char *, int, int))
{
	int i;

	FUNC0(&adb_handler_mutex);
	ids->nids = 0;
	for (i = 1; i < 16; i++) {
		if ((adb_handler[i].original_address == default_id) &&
		    (!handler_id || (handler_id == adb_handler[i].handler_id) || 
		    FUNC3(i, handler_id))) {
			if (adb_handler[i].handler != 0) {
				FUNC2("Two handlers for ADB device %d\n",
				       default_id);
				continue;
			}
			FUNC4(&adb_handler_lock);
			adb_handler[i].handler = handler;
			FUNC5(&adb_handler_lock);
			ids->id[ids->nids++] = i;
		}
	}
	FUNC1(&adb_handler_mutex);
	return ids->nids;
}