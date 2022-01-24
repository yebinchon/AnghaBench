#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct closure {int dummy; } ;
struct btree {scalar_t__ written; TYPE_4__* c; int /*<<< orphan*/  key; int /*<<< orphan*/  flags; int /*<<< orphan*/  io; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  work; int /*<<< orphan*/  keys; int /*<<< orphan*/  write_lock; } ;
struct bset {scalar_t__ seq; int /*<<< orphan*/  keys; } ;
struct TYPE_11__ {int /*<<< orphan*/  btree_sectors_written; } ;
struct TYPE_7__ {int block_size; } ;
struct TYPE_10__ {TYPE_1__ sb; int /*<<< orphan*/  cl; } ;
struct TYPE_9__ {scalar_t__ seq; } ;
struct TYPE_8__ {int bio_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_NODE_dirty ; 
 int /*<<< orphan*/  BTREE_NODE_write_idx ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (struct btree*) ; 
 TYPE_3__* FUNC6 (struct btree*) ; 
 struct bset* FUNC7 (struct btree*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC12 (struct btree*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct bset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct btree*) ; 

void FUNC17(struct btree *b, struct closure *parent)
{
	struct bset *i = FUNC7(b);

	FUNC14(&b->write_lock);

	FUNC16(b);

	FUNC0(current->bio_list);
	FUNC0(b->written >= FUNC5(b));
	FUNC0(b->written && !i->keys);
	FUNC0(FUNC6(b)->seq != i->seq);
	FUNC3(&b->keys, "writing");

	FUNC8(&b->work);

	/* If caller isn't waiting for write, parent refcount is cache set */
	FUNC13(&b->io_mutex);
	FUNC11(&b->io, parent ?: &b->c->cl);

	FUNC10(BTREE_NODE_dirty,	 &b->flags);
	FUNC9(BTREE_NODE_write_idx, &b->flags);

	FUNC12(b);

	FUNC2(FUNC15(i, FUNC4(b->c)) * b->c->sb.block_size,
			&FUNC1(b->c, &b->key, 0)->btree_sectors_written);

	b->written += FUNC15(i, FUNC4(b->c));
}