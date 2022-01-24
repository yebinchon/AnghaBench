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
struct smq_hash_table {int /*<<< orphan*/  hash_bits; } ;
struct entry {int dummy; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smq_hash_table*,unsigned int,struct entry*) ; 
 struct entry* FUNC1 (struct smq_hash_table*,unsigned int,int /*<<< orphan*/ ,struct entry**) ; 
 int /*<<< orphan*/  FUNC2 (struct smq_hash_table*,unsigned int,struct entry*,struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct entry *FUNC5(struct smq_hash_table *ht, dm_oblock_t oblock)
{
	struct entry *e, *prev;
	unsigned h = FUNC4(FUNC3(oblock), ht->hash_bits);

	e = FUNC1(ht, h, oblock, &prev);
	if (e && prev) {
		/*
		 * Move to the front because this entry is likely
		 * to be hit again.
		 */
		FUNC2(ht, h, e, prev);
		FUNC0(ht, h, e);
	}

	return e;
}