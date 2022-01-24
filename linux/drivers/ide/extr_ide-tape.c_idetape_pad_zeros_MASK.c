#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ idetape_tape_t ;
struct TYPE_6__ {TYPE_1__* driver_data; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_IDETAPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(ide_drive_t *drive, int bcount)
{
	idetape_tape_t *tape = drive->driver_data;

	FUNC1(tape->buf, 0, tape->buffer_size);

	while (bcount) {
		unsigned int count = FUNC2(tape->buffer_size, bcount);

		FUNC0(drive, REQ_IDETAPE_WRITE, count);
		bcount -= count;
	}
}