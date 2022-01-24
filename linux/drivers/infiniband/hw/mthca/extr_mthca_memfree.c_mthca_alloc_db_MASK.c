#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mthca_dev {TYPE_2__* db_tab; TYPE_1__* pdev; int /*<<< orphan*/  driver_uar; } ;
struct mthca_db_page {int /*<<< orphan*/ * db_rec; int /*<<< orphan*/  used; int /*<<< orphan*/  mapping; } ;
typedef  enum mthca_db_type { ____Placeholder_mthca_db_type } mthca_db_type ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int max_group1; int min_group2; int /*<<< orphan*/  mutex; struct mthca_db_page* page; int /*<<< orphan*/  npages; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MTHCA_DB_REC_PER_PAGE ; 
#define  MTHCA_DB_TYPE_CQ_ARM 132 
#define  MTHCA_DB_TYPE_CQ_SET_CI 131 
#define  MTHCA_DB_TYPE_RQ 130 
#define  MTHCA_DB_TYPE_SQ 129 
#define  MTHCA_DB_TYPE_SRQ 128 
 int /*<<< orphan*/  MTHCA_ICM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

int FUNC11(struct mthca_dev *dev, enum mthca_db_type type,
		   u32 qn, __be32 **db)
{
	int group;
	int start, end, dir;
	int i, j;
	struct mthca_db_page *page;
	int ret = 0;

	FUNC8(&dev->db_tab->mutex);

	switch (type) {
	case MTHCA_DB_TYPE_CQ_ARM:
	case MTHCA_DB_TYPE_SQ:
		group = 0;
		start = 0;
		end   = dev->db_tab->max_group1;
		dir   = 1;
		break;

	case MTHCA_DB_TYPE_CQ_SET_CI:
	case MTHCA_DB_TYPE_RQ:
	case MTHCA_DB_TYPE_SRQ:
		group = 1;
		start = dev->db_tab->npages - 1;
		end   = dev->db_tab->min_group2;
		dir   = -1;
		break;

	default:
		ret = -EINVAL;
		goto out;
	}

	for (i = start; i != end; i += dir)
		if (dev->db_tab->page[i].db_rec &&
		    !FUNC0(dev->db_tab->page[i].used,
				 MTHCA_DB_REC_PER_PAGE)) {
			page = dev->db_tab->page + i;
			goto found;
		}

	for (i = start; i != end; i += dir)
		if (!dev->db_tab->page[i].db_rec) {
			page = dev->db_tab->page + i;
			goto alloc;
		}

	if (dev->db_tab->max_group1 >= dev->db_tab->min_group2 - 1) {
		ret = -ENOMEM;
		goto out;
	}

	if (group == 0)
		++dev->db_tab->max_group1;
	else
		--dev->db_tab->min_group2;

	page = dev->db_tab->page + end;

alloc:
	page->db_rec = FUNC3(&dev->pdev->dev,
					  MTHCA_ICM_PAGE_SIZE, &page->mapping,
					  GFP_KERNEL);
	if (!page->db_rec) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC6(dev, page->mapping,
				 FUNC7(dev, &dev->driver_uar, i));
	if (ret) {
		FUNC4(&dev->pdev->dev, MTHCA_ICM_PAGE_SIZE,
				  page->db_rec, page->mapping);
		goto out;
	}

	FUNC1(page->used, MTHCA_DB_REC_PER_PAGE);

found:
	j = FUNC5(page->used, MTHCA_DB_REC_PER_PAGE);
	FUNC10(j, page->used);

	if (group == 1)
		j = MTHCA_DB_REC_PER_PAGE - 1 - j;

	ret = i * MTHCA_DB_REC_PER_PAGE + j;

	page->db_rec[j] = FUNC2((qn << 8) | (type << 5));

	*db = (__be32 *) &page->db_rec[j];

out:
	FUNC9(&dev->db_tab->mutex);

	return ret;
}