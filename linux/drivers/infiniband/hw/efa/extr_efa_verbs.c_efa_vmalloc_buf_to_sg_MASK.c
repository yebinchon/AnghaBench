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
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 struct scatterlist* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,struct page*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct scatterlist *FUNC5(u64 *buf, int page_cnt)
{
	struct scatterlist *sglist;
	struct page *pg;
	int i;

	sglist = FUNC0(page_cnt, sizeof(*sglist), GFP_KERNEL);
	if (!sglist)
		return NULL;
	FUNC2(sglist, page_cnt);
	for (i = 0; i < page_cnt; i++) {
		pg = FUNC4(buf);
		if (!pg)
			goto err;
		FUNC3(&sglist[i], pg, PAGE_SIZE, 0);
		buf += PAGE_SIZE / sizeof(*buf);
	}
	return sglist;

err:
	FUNC1(sglist);
	return NULL;
}