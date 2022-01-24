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
struct radeon_cs_buckets {int /*<<< orphan*/ * bucket; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 unsigned int RADEON_CS_NUM_BUCKETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static void FUNC1(struct radeon_cs_buckets *b,
				       struct list_head *out_list)
{
	unsigned i;

	/* Connect the sorted buckets in the output list. */
	for (i = 0; i < RADEON_CS_NUM_BUCKETS; i++) {
		FUNC0(&b->bucket[i], out_list);
	}
}