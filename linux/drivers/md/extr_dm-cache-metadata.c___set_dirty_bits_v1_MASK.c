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
struct dm_cache_metadata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dm_cache_metadata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct dm_cache_metadata *cmd, unsigned nr_bits, unsigned long *bits)
{
	int r;
	unsigned i;
	for (i = 0; i < nr_bits; i++) {
		r = FUNC0(cmd, FUNC2(i), FUNC1(i, bits));
		if (r)
			return r;
	}

	return 0;
}