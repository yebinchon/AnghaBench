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
struct request {int /*<<< orphan*/  queuelist; } ;
struct TYPE_3__ {int sense_rq_active; int /*<<< orphan*/  rq_work; int /*<<< orphan*/  rq_list; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(ide_drive_t *drive, struct request *rq)
{
	drive->sense_rq_active = true;
	FUNC1(&rq->queuelist, &drive->rq_list);
	FUNC0(&drive->rq_work);
}