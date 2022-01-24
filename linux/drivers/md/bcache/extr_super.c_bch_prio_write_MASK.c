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
struct prio_set {long next_bucket; int /*<<< orphan*/  magic; int /*<<< orphan*/  csum; struct bucket_disk* data; int /*<<< orphan*/  seq; } ;
struct closure {int dummy; } ;
struct TYPE_3__ {int bucket_size; int nbuckets; } ;
struct cache {long* prio_buckets; int* prio_last_buckets; struct bucket* buckets; TYPE_2__* set; TYPE_1__ sb; struct prio_set* disk_buckets; int /*<<< orphan*/  meta_sectors_written; } ;
struct bucket_disk {int /*<<< orphan*/  gen; int /*<<< orphan*/  prio; } ;
struct bucket {int /*<<< orphan*/  pin; int /*<<< orphan*/  gen; int /*<<< orphan*/  prio; } ;
struct TYPE_4__ {int /*<<< orphan*/  bucket_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  RESERVE_PRIO ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bucket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 long FUNC4 (struct cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct closure*) ; 
 scalar_t__ FUNC7 (struct cache*) ; 
 int /*<<< orphan*/  FUNC8 (struct closure*) ; 
 int /*<<< orphan*/  FUNC9 (struct closure*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct cache*) ; 
 int /*<<< orphan*/  FUNC15 (struct cache*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct cache*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

void FUNC18(struct cache *ca)
{
	int i;
	struct bucket *b;
	struct closure cl;

	FUNC8(&cl);

	FUNC11(&ca->set->bucket_lock);

	ca->disk_buckets->seq++;

	FUNC3(ca->sb.bucket_size * FUNC14(ca),
			&ca->meta_sectors_written);

	//pr_debug("free %zu, free_inc %zu, unused %zu", fifo_used(&ca->free),
	//	 fifo_used(&ca->free_inc), fifo_used(&ca->unused));

	for (i = FUNC14(ca) - 1; i >= 0; --i) {
		long bucket;
		struct prio_set *p = ca->disk_buckets;
		struct bucket_disk *d = p->data;
		struct bucket_disk *end = d + FUNC16(ca);

		for (b = ca->buckets + i * FUNC16(ca);
		     b < ca->buckets + ca->sb.nbuckets && d < end;
		     b++, d++) {
			d->prio = FUNC10(b->prio);
			d->gen = b->gen;
		}

		p->next_bucket	= ca->prio_buckets[i + 1];
		p->magic	= FUNC17(&ca->sb);
		p->csum		= FUNC5(&p->magic, FUNC7(ca) - 8);

		bucket = FUNC4(ca, RESERVE_PRIO, true);
		FUNC0(bucket == -1);

		FUNC13(&ca->set->bucket_lock);
		FUNC15(ca, bucket, REQ_OP_WRITE, 0);
		FUNC12(&ca->set->bucket_lock);

		ca->prio_buckets[i] = bucket;
		FUNC2(&ca->buckets[bucket].pin);
	}

	FUNC13(&ca->set->bucket_lock);

	FUNC6(ca->set, &cl);
	FUNC9(&cl);

	FUNC12(&ca->set->bucket_lock);

	/*
	 * Don't want the old priorities to get garbage collected until after we
	 * finish writing the new ones, and they're journalled
	 */
	for (i = 0; i < FUNC14(ca); i++) {
		if (ca->prio_last_buckets[i])
			FUNC1(ca,
				&ca->buckets[ca->prio_last_buckets[i]]);

		ca->prio_last_buckets[i] = ca->prio_buckets[i];
	}
}