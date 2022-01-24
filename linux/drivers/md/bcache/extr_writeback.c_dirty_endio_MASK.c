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
struct keybuf_key {int /*<<< orphan*/  key; struct dirty_io* private; } ;
struct dirty_io {int /*<<< orphan*/  cl; int /*<<< orphan*/  dc; } ;
struct bio {scalar_t__ bi_status; struct keybuf_key* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bio *bio)
{
	struct keybuf_key *w = bio->bi_private;
	struct dirty_io *io = w->private;

	if (bio->bi_status) {
		FUNC0(&w->key, false);
		FUNC1(io->dc, bio);
	}

	FUNC2(&io->cl);
}