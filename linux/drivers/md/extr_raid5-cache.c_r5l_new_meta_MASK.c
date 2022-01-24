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
struct r5l_meta_block {void* position; void* seq; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
struct r5l_log {int /*<<< orphan*/  io_list_lock; int /*<<< orphan*/  running_ios; int /*<<< orphan*/  seq; int /*<<< orphan*/  log_start; int /*<<< orphan*/  meta_pool; int /*<<< orphan*/  io_pool; } ;
struct r5l_io_unit {int meta_offset; int /*<<< orphan*/  log_sibling; void* meta_page; TYPE_1__* current_bio; scalar_t__ seq; int /*<<< orphan*/  log_start; int /*<<< orphan*/  state; int /*<<< orphan*/  flush_barriers; int /*<<< orphan*/  stripe_list; struct r5l_log* log; } ;
struct TYPE_3__ {struct r5l_io_unit* bi_private; int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IO_UNIT_RUNNING ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  R5LOG_MAGIC ; 
 int /*<<< orphan*/  R5LOG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct r5l_meta_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct r5l_io_unit*,int /*<<< orphan*/ ,int) ; 
 struct r5l_meta_block* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (struct r5l_log*,struct r5l_io_unit*) ; 
 TYPE_1__* FUNC11 (struct r5l_log*) ; 
 int /*<<< orphan*/  r5l_log_endio ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct r5l_io_unit *FUNC14(struct r5l_log *log)
{
	struct r5l_io_unit *io;
	struct r5l_meta_block *block;

	io = FUNC7(&log->io_pool, GFP_ATOMIC);
	if (!io)
		return NULL;
	FUNC8(io, 0, sizeof(*io));

	io->log = log;
	FUNC0(&io->log_sibling);
	FUNC0(&io->stripe_list);
	FUNC2(&io->flush_barriers);
	io->state = IO_UNIT_RUNNING;

	io->meta_page = FUNC7(&log->meta_pool, GFP_NOIO);
	block = FUNC9(io->meta_page);
	FUNC3(block);
	block->magic = FUNC4(R5LOG_MAGIC);
	block->version = R5LOG_VERSION;
	block->seq = FUNC5(log->seq);
	block->position = FUNC5(log->log_start);

	io->log_start = log->log_start;
	io->meta_offset = sizeof(struct r5l_meta_block);
	io->seq = log->seq++;

	io->current_bio = FUNC11(log);
	io->current_bio->bi_end_io = r5l_log_endio;
	io->current_bio->bi_private = io;
	FUNC1(io->current_bio, io->meta_page, PAGE_SIZE, 0);

	FUNC10(log, io);

	FUNC12(&log->io_list_lock);
	FUNC6(&io->log_sibling, &log->running_ios);
	FUNC13(&log->io_list_lock);

	return io;
}