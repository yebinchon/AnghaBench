#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct blk_mq_queue_data {int /*<<< orphan*/  rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ ide_hwif_t ;
struct TYPE_7__ {scalar_t__ sense_rq_active; TYPE_2__* hwif; } ;
typedef  TYPE_3__ ide_drive_t ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_5__ {TYPE_3__* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

blk_status_t FUNC4(struct blk_mq_hw_ctx *hctx,
			  const struct blk_mq_queue_data *bd)
{
	ide_drive_t *drive = hctx->queue->queuedata;
	ide_hwif_t *hwif = drive->hwif;

	FUNC2(&hwif->lock);
	if (drive->sense_rq_active) {
		FUNC3(&hwif->lock);
		return BLK_STS_DEV_RESOURCE;
	}
	FUNC3(&hwif->lock);

	FUNC0(bd->rq);
	return FUNC1(drive, bd->rq, false);
}