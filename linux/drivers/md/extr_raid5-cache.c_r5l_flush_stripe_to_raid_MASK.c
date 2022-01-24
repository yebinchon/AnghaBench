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
struct TYPE_6__ {int bi_opf; int /*<<< orphan*/  bi_end_io; } ;
struct r5l_log {TYPE_2__ flush_bio; TYPE_1__* rdev; int /*<<< orphan*/  io_list_lock; int /*<<< orphan*/  flushing_ios; int /*<<< orphan*/  io_end_ios; int /*<<< orphan*/  need_cache_flush; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  r5l_log_flush_endio ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(struct r5l_log *log)
{
	bool do_flush;

	if (!log || !log->need_cache_flush)
		return;

	FUNC4(&log->io_list_lock);
	/* flush bio is running */
	if (!FUNC2(&log->flushing_ios)) {
		FUNC5(&log->io_list_lock);
		return;
	}
	FUNC3(&log->io_end_ios, &log->flushing_ios);
	do_flush = !FUNC2(&log->flushing_ios);
	FUNC5(&log->io_list_lock);

	if (!do_flush)
		return;
	FUNC0(&log->flush_bio);
	FUNC1(&log->flush_bio, log->rdev->bdev);
	log->flush_bio.bi_end_io = r5l_log_flush_endio;
	log->flush_bio.bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;
	FUNC6(&log->flush_bio);
}