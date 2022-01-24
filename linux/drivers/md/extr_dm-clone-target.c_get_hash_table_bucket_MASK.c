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
struct hash_table_bucket {int dummy; } ;
struct clone {struct hash_table_bucket* ht; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_TABLE_BITS ; 
 size_t FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hash_table_bucket *FUNC1(struct clone *clone,
						       unsigned long region_nr)
{
	return &clone->ht[FUNC0(region_nr, HASH_TABLE_BITS)];
}