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
struct request_queue {int /*<<< orphan*/ * queue_hw_ctx; } ;
struct request {int dummy; } ;
struct TYPE_3__ {struct request_queue* queue; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int) ; 

void FUNC3(ide_drive_t *drive, struct request *rq)
{
	struct request_queue *q = drive->queue;

	/* Use 3ms as that was the old plug delay */
	if (rq) {
		FUNC2(rq, false);
		FUNC0(q, 3);
	} else
		FUNC1(q->queue_hw_ctx[0], 3);
}