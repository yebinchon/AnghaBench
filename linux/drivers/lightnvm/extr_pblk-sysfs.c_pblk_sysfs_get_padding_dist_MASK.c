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
struct pblk {int min_write_pgs; unsigned long long nr_flush_rst; int /*<<< orphan*/ * pad_dist; int /*<<< orphan*/  nr_flush; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC1 (unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC2 (char*,scalar_t__,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct pblk *pblk, char *page)
{
	int sz = 0;
	unsigned long long total;
	unsigned long long total_buckets = 0;
	int buckets = pblk->min_write_pgs - 1;
	int i;

	total = FUNC0(&pblk->nr_flush) - pblk->nr_flush_rst;
	if (!total) {
		for (i = 0; i < (buckets + 1); i++)
			sz += FUNC2(page + sz, PAGE_SIZE - sz,
				"%d:0 ", i);
		sz += FUNC2(page + sz, PAGE_SIZE - sz, "\n");

		return sz;
	}

	for (i = 0; i < buckets; i++)
		total_buckets += FUNC0(&pblk->pad_dist[i]);

	sz += FUNC2(page + sz, PAGE_SIZE - sz, "0:%lld%% ",
		FUNC1(total - total_buckets, total));

	for (i = 0; i < buckets; i++) {
		unsigned long long p;

		p = FUNC1(FUNC0(&pblk->pad_dist[i]),
					  total);
		sz += FUNC2(page + sz, PAGE_SIZE - sz, "%d:%lld%% ",
				i + 1, p);
	}
	sz += FUNC2(page + sz, PAGE_SIZE - sz, "\n");

	return sz;
}