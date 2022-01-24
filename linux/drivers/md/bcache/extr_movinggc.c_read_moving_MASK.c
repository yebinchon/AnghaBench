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
struct bio {int /*<<< orphan*/  bi_end_io; } ;
struct TYPE_4__ {struct bio bio; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq; struct cache_set* c; int /*<<< orphan*/  inode; } ;
struct moving_io {int /*<<< orphan*/  cl; TYPE_2__ bio; TYPE_1__ op; struct keybuf_key* w; } ;
struct keybuf_key {struct moving_io* private; int /*<<< orphan*/  key; } ;
struct closure {int dummy; } ;
struct cache_set {int /*<<< orphan*/  moving_gc_keys; int /*<<< orphan*/  moving_in_flight; int /*<<< orphan*/  moving_gc_wq; int /*<<< orphan*/  flags; } ;
struct bio_vec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SET_STOPPING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct moving_io*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_KEY ; 
 int /*<<< orphan*/  PAGE_SECTORS ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct keybuf_key*) ; 
 struct keybuf_key* FUNC6 (struct cache_set*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct closure*) ; 
 int /*<<< orphan*/  FUNC9 (struct closure*) ; 
 int /*<<< orphan*/  FUNC10 (struct closure*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct moving_io*) ; 
 struct moving_io* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct moving_io*) ; 
 int /*<<< orphan*/  moving_pred ; 
 scalar_t__ FUNC15 (struct cache_set*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_moving_endio ; 
 int /*<<< orphan*/  read_moving_submit ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct cache_set *c)
{
	struct keybuf_key *w;
	struct moving_io *io;
	struct bio *bio;
	struct closure cl;

	FUNC9(&cl);

	/* XXX: if we error, background writeback could stall indefinitely */

	while (!FUNC16(CACHE_SET_STOPPING, &c->flags)) {
		w = FUNC6(c, &c->moving_gc_keys,
					   &MAX_KEY, moving_pred);
		if (!w)
			break;

		if (FUNC15(c, &w->key, 0)) {
			FUNC5(&c->moving_gc_keys, w);
			continue;
		}

		io = FUNC13(sizeof(struct moving_io) + sizeof(struct bio_vec)
			     * FUNC0(FUNC3(&w->key), PAGE_SECTORS),
			     GFP_KERNEL);
		if (!io)
			goto err;

		w->private	= io;
		io->w		= w;
		io->op.inode	= FUNC2(&w->key);
		io->op.c	= c;
		io->op.wq	= c->moving_gc_wq;

		FUNC14(io);
		bio = &io->bio.bio;

		FUNC7(bio, REQ_OP_READ, 0);
		bio->bi_end_io	= read_moving_endio;

		if (FUNC4(bio, GFP_KERNEL))
			goto err;

		FUNC17(&w->key);

		FUNC11(&c->moving_in_flight);
		FUNC8(&io->cl, read_moving_submit, NULL, &cl);
	}

	if (0) {
err:		if (!FUNC1(w->private))
			FUNC12(w->private);

		FUNC5(&c->moving_gc_keys, w);
	}

	FUNC10(&cl);
}