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
struct roce_hem_item {int count; int start; int end; int /*<<< orphan*/  sibling; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; int /*<<< orphan*/  dma_addr; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BA_BYTE_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct roce_hem_item*) ; 
 struct roce_hem_item* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct roce_hem_item *FUNC4(struct hns_roce_dev *hr_dev,
						   int start, int end,
						   int count, bool exist_bt,
						   int bt_level)
{
	struct roce_hem_item *hem;

	hem = FUNC3(sizeof(*hem), GFP_KERNEL);
	if (!hem)
		return NULL;

	if (exist_bt) {
		hem->addr = FUNC1(hr_dev->dev,
						   count * BA_BYTE_LEN,
						   &hem->dma_addr, GFP_KERNEL);
		if (!hem->addr) {
			FUNC2(hem);
			return NULL;
		}
	}

	hem->count = count;
	hem->start = start;
	hem->end = end;
	FUNC0(&hem->list);
	FUNC0(&hem->sibling);

	return hem;
}