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
typedef  int /*<<< orphan*/  u64 ;
struct pvrdma_page_dir {int ntables; int /*<<< orphan*/ ** tables; int /*<<< orphan*/ * dir; } ;
struct pvrdma_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (struct pvrdma_dev*,struct pvrdma_page_dir*) ; 

__attribute__((used)) static void FUNC3(struct pvrdma_dev *dev,
					   struct pvrdma_page_dir *pdir)
{
	if (pdir->tables) {
		int i;

		FUNC2(dev, pdir);

		for (i = 0; i < pdir->ntables; i++) {
			u64 *table = pdir->tables[i];

			if (table)
				FUNC0(&dev->pdev->dev, PAGE_SIZE,
						  table, pdir->dir[i]);
		}

		FUNC1(pdir->tables);
	}
}