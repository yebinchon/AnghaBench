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
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_7__ {int /*<<< orphan*/  bi_size; } ;
struct TYPE_8__ {TYPE_1__ iter_out; struct bio* bio_out; } ;
struct dm_crypt_io {scalar_t__ sector; int /*<<< orphan*/  rb_node; TYPE_2__ ctx; int /*<<< orphan*/  error; struct crypt_config* cc; } ;
struct TYPE_10__ {struct rb_node* rb_node; } ;
struct crypt_config {scalar_t__ start; int /*<<< orphan*/  write_thread_lock; TYPE_4__ write_tree; int /*<<< orphan*/  write_thread; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_3__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_11__ {scalar_t__ sector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DM_CRYPT_NO_OFFLOAD ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypt_config*,struct bio*) ; 
 TYPE_5__* FUNC5 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct dm_crypt_io *io, int async)
{
	struct bio *clone = io->ctx.bio_out;
	struct crypt_config *cc = io->cc;
	unsigned long flags;
	sector_t sector;
	struct rb_node **rbp, *parent;

	if (FUNC13(io->error)) {
		FUNC4(cc, clone);
		FUNC2(clone);
		FUNC3(io);
		return;
	}

	/* crypt_convert should have filled the clone bio */
	FUNC0(io->ctx.iter_out.bi_size);

	clone->bi_iter.bi_sector = cc->start + io->sector;

	if (FUNC7(!async) && FUNC12(DM_CRYPT_NO_OFFLOAD, &cc->flags)) {
		FUNC6(clone);
		return;
	}

	FUNC10(&cc->write_thread_lock, flags);
	if (FUNC1(&cc->write_tree))
		FUNC14(cc->write_thread);
	rbp = &cc->write_tree.rb_node;
	parent = NULL;
	sector = io->sector;
	while (*rbp) {
		parent = *rbp;
		if (sector < FUNC5(parent)->sector)
			rbp = &(*rbp)->rb_left;
		else
			rbp = &(*rbp)->rb_right;
	}
	FUNC9(&io->rb_node, parent, rbp);
	FUNC8(&io->rb_node, &cc->write_tree);
	FUNC11(&cc->write_thread_lock, flags);
}