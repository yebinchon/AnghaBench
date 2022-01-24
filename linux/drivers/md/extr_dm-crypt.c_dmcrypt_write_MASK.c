#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rb_root {int /*<<< orphan*/  rb_node; } ;
struct dm_crypt_io {int /*<<< orphan*/  rb_node; } ;
struct crypt_config {int /*<<< orphan*/  write_thread_lock; struct rb_root write_tree; } ;
struct blk_plug {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_root*) ; 
 struct rb_root RB_ROOT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_plug*) ; 
 struct dm_crypt_io* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC8 (struct rb_root*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(void *data)
{
	struct crypt_config *cc = data;
	struct dm_crypt_io *io;

	while (1) {
		struct rb_root write_tree;
		struct blk_plug plug;

		FUNC12(&cc->write_thread_lock);
continue_locked:

		if (!FUNC1(&cc->write_tree))
			goto pop_from_list;

		FUNC11(TASK_INTERRUPTIBLE);

		FUNC13(&cc->write_thread_lock);

		if (FUNC14(FUNC6())) {
			FUNC11(TASK_RUNNING);
			break;
		}

		FUNC10();

		FUNC11(TASK_RUNNING);
		FUNC12(&cc->write_thread_lock);
		goto continue_locked;

pop_from_list:
		write_tree = cc->write_tree;
		cc->write_tree = RB_ROOT;
		FUNC13(&cc->write_thread_lock);

		FUNC0(FUNC9(write_tree.rb_node));

		/*
		 * Note: we cannot walk the tree here with rb_next because
		 * the structures may be freed when kcryptd_io_write is called.
		 */
		FUNC3(&plug);
		do {
			io = FUNC4(FUNC8(&write_tree));
			FUNC7(&io->rb_node, &write_tree);
			FUNC5(io);
		} while (!FUNC1(&write_tree));
		FUNC2(&plug);
	}
	return 0;
}