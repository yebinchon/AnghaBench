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
struct entry {int /*<<< orphan*/  oblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smq_hash_table*,unsigned int,struct entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct smq_hash_table *ht, struct entry *e)
{
	unsigned h = FUNC2(FUNC1(e->oblock), ht->hash_bits);
	FUNC0(ht, h, e);
}