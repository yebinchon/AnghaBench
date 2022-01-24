#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uuid_entry {int /*<<< orphan*/  invalidated; int /*<<< orphan*/  last_reg; int /*<<< orphan*/  first_reg; int /*<<< orphan*/  label; int /*<<< orphan*/  uuid; } ;
struct closure {int dummy; } ;
struct cache_set {int nr_uuids; struct uuid_entry* uuids; int /*<<< orphan*/  uuid_write_mutex; struct closure uuid_write; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {unsigned long bi_opf; struct closure* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct bkey*) ; 
 int FUNC2 (struct bkey*) ; 
 unsigned long REQ_META ; 
 int REQ_OP_WRITE ; 
 unsigned long REQ_SYNC ; 
 struct bio* FUNC3 (struct cache_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct uuid_entry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct bkey*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,struct cache_set*,struct bkey*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct closure*,struct closure*) ; 
 int /*<<< orphan*/  FUNC10 (struct closure*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  uuid_endio ; 
 int /*<<< orphan*/  uuid_io_unlock ; 

__attribute__((used)) static void FUNC13(struct cache_set *c, int op, unsigned long op_flags,
		    struct bkey *k, struct closure *parent)
{
	struct closure *cl = &c->uuid_write;
	struct uuid_entry *u;
	unsigned int i;
	char buf[80];

	FUNC0(!parent);
	FUNC11(&c->uuid_write_mutex);
	FUNC9(cl, parent);

	for (i = 0; i < FUNC1(k); i++) {
		struct bio *bio = FUNC3(c);

		bio->bi_opf = REQ_SYNC | REQ_META | op_flags;
		bio->bi_iter.bi_size = FUNC2(k) << 9;

		bio->bi_end_io	= uuid_endio;
		bio->bi_private = cl;
		FUNC8(bio, op, REQ_SYNC|REQ_META|op_flags);
		FUNC4(bio, c->uuids);

		FUNC7(bio, c, k, i);

		if (op != REQ_OP_WRITE)
			break;
	}

	FUNC5(buf, sizeof(buf), k);
	FUNC12("%s UUIDs at %s", op == REQ_OP_WRITE ? "wrote" : "read", buf);

	for (u = c->uuids; u < c->uuids + c->nr_uuids; u++)
		if (!FUNC6(u->uuid, 16))
			FUNC12("Slot %zi: %pU: %s: 1st: %u last: %u inv: %u",
				 u - c->uuids, u->uuid, u->label,
				 u->first_reg, u->last_reg, u->invalidated);

	FUNC10(cl, uuid_io_unlock);
}