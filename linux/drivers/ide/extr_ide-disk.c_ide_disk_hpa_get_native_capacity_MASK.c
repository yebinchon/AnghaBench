#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ capacity64; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  hpa_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static u64 FUNC2(ide_drive_t *drive, int lba48)
{
	u64 capacity, set_max;

	capacity = drive->capacity64;
	set_max  = FUNC1(drive, lba48);

	if (FUNC0(drive->id, hpa_list)) {
		/*
		 * Since we are inclusive wrt to firmware revisions do this
		 * extra check and apply the workaround only when needed.
		 */
		if (set_max == capacity + 1)
			set_max--;
	}

	return set_max;
}