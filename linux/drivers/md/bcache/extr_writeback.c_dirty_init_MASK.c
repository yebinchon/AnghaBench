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
struct keybuf_key {int /*<<< orphan*/  key; struct dirty_io* private; } ;
struct TYPE_4__ {int bi_size; } ;
struct bio {struct keybuf_key* bi_private; TYPE_2__ bi_iter; int /*<<< orphan*/  bi_inline_vecs; } ;
struct dirty_io {TYPE_1__* dc; struct bio bio; } ;
struct TYPE_3__ {int /*<<< orphan*/  writeback_percent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOPRIO_CLASS_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SECTORS ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct keybuf_key *w)
{
	struct dirty_io *io = w->private;
	struct bio *bio = &io->bio;

	FUNC4(bio, bio->bi_inline_vecs,
		 FUNC0(FUNC2(&w->key), PAGE_SECTORS));
	if (!io->dc->writeback_percent)
		FUNC5(bio, FUNC1(IOPRIO_CLASS_IDLE, 0));

	bio->bi_iter.bi_size	= FUNC2(&w->key) << 9;
	bio->bi_private		= w;
	FUNC3(bio, NULL);
}