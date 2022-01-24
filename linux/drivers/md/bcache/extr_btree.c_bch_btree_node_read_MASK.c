#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct closure {int dummy; } ;
struct TYPE_11__ {TYPE_2__* set; } ;
struct btree {int /*<<< orphan*/  key; TYPE_4__* c; TYPE_3__ keys; } ;
struct TYPE_9__ {int bi_size; } ;
struct bio {int bi_opf; scalar_t__ bi_status; struct closure* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;
struct TYPE_12__ {int /*<<< orphan*/  btree_read_time; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int REQ_META ; 
 int REQ_OP_READ ; 
 struct bio* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btree*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct btree*) ; 
 int /*<<< orphan*/  btree_node_read_endio ; 
 int /*<<< orphan*/  FUNC10 (struct closure*) ; 
 int /*<<< orphan*/  FUNC11 (struct closure*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct btree*) ; 
 int /*<<< orphan*/  FUNC14 (struct btree*) ; 

__attribute__((used)) static void FUNC15(struct btree *b)
{
	uint64_t start_time = FUNC12();
	struct closure cl;
	struct bio *bio;

	FUNC14(b);

	FUNC10(&cl);

	bio = FUNC2(b->c);
	bio->bi_iter.bi_size = FUNC0(&b->key) << 9;
	bio->bi_end_io	= btree_node_read_endio;
	bio->bi_private	= &cl;
	bio->bi_opf = REQ_OP_READ | REQ_META;

	FUNC4(bio, b->keys.set[0].data);

	FUNC7(bio, b->c, &b->key, 0);
	FUNC11(&cl);

	if (bio->bi_status)
		FUNC13(b);

	FUNC3(bio, b->c);

	if (FUNC9(b))
		goto err;

	FUNC5(b);
	FUNC8(&b->c->btree_read_time, start_time);

	return;
err:
	FUNC6(b->c, "io error reading bucket %zu",
			    FUNC1(b->c, &b->key, 0));
}