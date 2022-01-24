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
struct hns_roce_buf_region {int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct hns_roce_buf_region *regions,
			    dma_addr_t **bufs, int region_cnt)
{
	struct hns_roce_buf_region *r;
	int i;

	for (i = 0; i < region_cnt; i++) {
		r = &regions[i];
		bufs[i] = FUNC1(r->count, sizeof(dma_addr_t), GFP_KERNEL);
		if (!bufs[i])
			goto err_alloc;
	}

	return 0;

err_alloc:
	FUNC0(bufs, i);

	return -ENOMEM;
}