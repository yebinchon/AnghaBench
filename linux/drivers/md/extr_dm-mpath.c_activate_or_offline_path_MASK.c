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
struct request_queue {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct pgpath {scalar_t__ is_active; TYPE_2__ path; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_DH_DEV_OFFLINED ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgpath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/  (*) (struct pgpath*,int /*<<< orphan*/ ),struct pgpath*) ; 

__attribute__((used)) static void FUNC4(struct pgpath *pgpath)
{
	struct request_queue *q = FUNC0(pgpath->path.dev->bdev);

	if (pgpath->is_active && !FUNC1(q))
		FUNC3(q, pg_init_done, pgpath);
	else
		FUNC2(pgpath, SCSI_DH_DEV_OFFLINED);
}