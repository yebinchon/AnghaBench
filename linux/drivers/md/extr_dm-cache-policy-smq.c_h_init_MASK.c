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
struct smq_hash_table {int /*<<< orphan*/ * buckets; int /*<<< orphan*/  hash_bits; struct entry_space* es; } ;
struct entry_space {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDEXER_NULL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct smq_hash_table *ht, struct entry_space *es, unsigned nr_entries)
{
	unsigned i, nr_buckets;

	ht->es = es;
	nr_buckets = FUNC3(FUNC2(nr_entries / 4u, 16u));
	ht->hash_bits = FUNC0(nr_buckets);

	ht->buckets = FUNC4(FUNC1(nr_buckets, sizeof(*ht->buckets)));
	if (!ht->buckets)
		return -ENOMEM;

	for (i = 0; i < nr_buckets; i++)
		ht->buckets[i] = INDEXER_NULL;

	return 0;
}