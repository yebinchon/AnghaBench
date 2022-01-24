#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int page_cnt; scalar_t__ start_page; } ;
union dm_mem_page_range {TYPE_1__ finfo; } ;
struct page {int dummy; } ;
struct hv_dynmem_device {int /*<<< orphan*/  num_pages_ballooned; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct hv_dynmem_device *dm,
			 union dm_mem_page_range *range_array)
{
	int num_pages = range_array->finfo.page_cnt;
	__u64 start_frame = range_array->finfo.start_page;
	struct page *pg;
	int i;

	for (i = 0; i < num_pages; i++) {
		pg = FUNC2(i + start_frame);
		FUNC0(pg);
		FUNC1(pg);
		dm->num_pages_ballooned--;
	}
}