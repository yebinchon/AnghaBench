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
struct efivar_entry {int scanning; int /*<<< orphan*/  list; scalar_t__ deleting; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct efivar_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct efivar_entry *entry,
						bool turn_off_scanning)
{
	if (entry->deleting) {
		FUNC3(&entry->list);
		FUNC1();
		FUNC2(entry);
		if (FUNC0())
			return -EINTR;
	} else if (turn_off_scanning)
		entry->scanning = false;

	return 0;
}