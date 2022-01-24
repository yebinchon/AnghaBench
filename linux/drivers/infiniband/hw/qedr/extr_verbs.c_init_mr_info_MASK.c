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
struct qedr_pbl {int /*<<< orphan*/  pa; int /*<<< orphan*/  list_entry; } ;
struct qedr_dev {int dummy; } ;
struct mr_info {int /*<<< orphan*/  free_pbl_list; int /*<<< orphan*/  pbl_info; struct qedr_pbl* pbl_table; int /*<<< orphan*/  inuse_pbl_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct qedr_pbl*) ; 
 int FUNC3 (struct qedr_pbl*) ; 
 int /*<<< orphan*/  QEDR_MSG_MR ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_dev*,struct mr_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct qedr_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qedr_dev*,int /*<<< orphan*/ *,size_t,int) ; 

__attribute__((used)) static int FUNC8(struct qedr_dev *dev, struct mr_info *info,
			size_t page_list_len, bool two_layered)
{
	struct qedr_pbl *tmp;
	int rc;

	FUNC1(&info->free_pbl_list);
	FUNC1(&info->inuse_pbl_list);

	rc = FUNC7(dev, &info->pbl_info,
				  page_list_len, two_layered);
	if (rc)
		goto done;

	info->pbl_table = FUNC6(dev, &info->pbl_info, GFP_KERNEL);
	if (FUNC2(info->pbl_table)) {
		rc = FUNC3(info->pbl_table);
		goto done;
	}

	FUNC0(dev, QEDR_MSG_MR, "pbl_table_pa = %pa\n",
		 &info->pbl_table->pa);

	/* in usual case we use 2 PBLs, so we add one to free
	 * list and allocating another one
	 */
	tmp = FUNC6(dev, &info->pbl_info, GFP_KERNEL);
	if (FUNC2(tmp)) {
		FUNC0(dev, QEDR_MSG_MR, "Extra PBL is not allocated\n");
		goto done;
	}

	FUNC5(&tmp->list_entry, &info->free_pbl_list);

	FUNC0(dev, QEDR_MSG_MR, "extra pbl_table_pa = %pa\n", &tmp->pa);

done:
	if (rc)
		FUNC4(dev, info);

	return rc;
}