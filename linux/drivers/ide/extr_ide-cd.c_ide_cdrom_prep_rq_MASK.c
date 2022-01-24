#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct request*) ; 
 int FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(ide_drive_t *drive, struct request *rq)
{
	if (!FUNC0(rq)) {
		FUNC5(FUNC4(rq));

		return FUNC2(drive->queue, rq);
	} else if (FUNC1(rq))
		return FUNC3(rq);

	return true;
}