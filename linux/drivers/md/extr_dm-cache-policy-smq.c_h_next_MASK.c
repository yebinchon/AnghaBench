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
struct smq_hash_table {int /*<<< orphan*/  es; } ;
struct entry {int /*<<< orphan*/  hash_next; } ;

/* Variables and functions */
 struct entry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct entry *FUNC1(struct smq_hash_table *ht, struct entry *e)
{
	return FUNC0(ht->es, e->hash_next);
}