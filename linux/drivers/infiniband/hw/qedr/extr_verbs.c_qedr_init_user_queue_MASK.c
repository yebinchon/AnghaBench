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
typedef  int u32 ;
struct qedr_userq {size_t buf_len; int /*<<< orphan*/ * umem; int /*<<< orphan*/ * pbl_tbl; int /*<<< orphan*/  pbl_info; int /*<<< orphan*/  buf_addr; } ;
struct qedr_dev {int dummy; } ;
struct ib_udata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*,int) ; 
 int ENOMEM ; 
 int FW_PAGE_SHIFT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct ib_udata*,int /*<<< orphan*/ ,size_t,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct qedr_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qedr_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct qedr_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC10(struct ib_udata *udata,
				       struct qedr_dev *dev,
				       struct qedr_userq *q, u64 buf_addr,
				       size_t buf_len, int access, int dmasync,
				       int alloc_and_init)
{
	u32 fw_pages;
	int rc;

	q->buf_addr = buf_addr;
	q->buf_len = buf_len;
	q->umem = FUNC3(udata, q->buf_addr, q->buf_len, access, dmasync);
	if (FUNC1(q->umem)) {
		FUNC0(dev, "create user queue: failed ib_umem_get, got %ld\n",
		       FUNC2(q->umem));
		return FUNC2(q->umem);
	}

	fw_pages = FUNC4(q->umem) <<
	    (PAGE_SHIFT - FW_PAGE_SHIFT);

	rc = FUNC9(dev, &q->pbl_info, fw_pages, 0);
	if (rc)
		goto err0;

	if (alloc_and_init) {
		q->pbl_tbl = FUNC7(dev, &q->pbl_info, GFP_KERNEL);
		if (FUNC1(q->pbl_tbl)) {
			rc = FUNC2(q->pbl_tbl);
			goto err0;
		}
		FUNC8(dev, q->umem, q->pbl_tbl, &q->pbl_info,
				   FW_PAGE_SHIFT);
	} else {
		q->pbl_tbl = FUNC6(sizeof(*q->pbl_tbl), GFP_KERNEL);
		if (!q->pbl_tbl) {
			rc = -ENOMEM;
			goto err0;
		}
	}

	return 0;

err0:
	FUNC5(q->umem);
	q->umem = NULL;

	return rc;
}