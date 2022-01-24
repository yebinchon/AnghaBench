#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
typedef  int /*<<< orphan*/  ide_drive_t ;
struct TYPE_4__ {int (* special ) (int /*<<< orphan*/ *,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  result; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  ide_stopped ; 
 TYPE_1__* FUNC3 (struct request*) ; 

ide_startstop_t FUNC4(ide_drive_t *drive, struct request *rq)
{
	int err, (*setfunc)(ide_drive_t *, int) = FUNC2(rq)->special;

	err = setfunc(drive, *(int *)&FUNC3(rq)->cmd[1]);
	if (err)
		FUNC3(rq)->result = err;
	FUNC1(drive, 0, FUNC0(rq));
	return ide_stopped;
}