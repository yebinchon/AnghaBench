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
struct hns_roce_dev {int /*<<< orphan*/  pgdir_mutex; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {TYPE_2__* pgdir; } ;
struct hns_roce_db {int order; int index; TYPE_1__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  db_dma; int /*<<< orphan*/  page; int /*<<< orphan*/  order1; int /*<<< orphan*/ * bits; int /*<<< orphan*/  order0; } ;

/* Variables and functions */
 int HNS_ROCE_DB_PER_PAGE ; 
 int HNS_ROCE_DB_TYPE_COUNT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 

void FUNC9(struct hns_roce_dev *hr_dev, struct hns_roce_db *db)
{
	int o;
	int i;

	FUNC5(&hr_dev->pgdir_mutex);

	o = db->order;
	i = db->index;

	if (db->order == 0 && FUNC8(i ^ 1, db->u.pgdir->order0)) {
		FUNC1(i ^ 1, db->u.pgdir->order0);
		++o;
	}

	i >>= o;
	FUNC7(i, db->u.pgdir->bits[o]);

	if (FUNC0(db->u.pgdir->order1,
			HNS_ROCE_DB_PER_PAGE / HNS_ROCE_DB_TYPE_COUNT)) {
		FUNC2(hr_dev->dev, PAGE_SIZE, db->u.pgdir->page,
				  db->u.pgdir->db_dma);
		FUNC4(&db->u.pgdir->list);
		FUNC3(db->u.pgdir);
	}

	FUNC6(&hr_dev->pgdir_mutex);
}