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
struct ib_mr {int dummy; } ;
struct rxe_pd {struct ib_mr ibmr; } ;
struct rxe_mem {struct ib_mr ibmr; } ;
struct rxe_dev {int /*<<< orphan*/  mr_pool; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_pd*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_pd*) ; 
 struct rxe_pd* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rxe_pd*) ; 
 int /*<<< orphan*/  FUNC5 (struct rxe_pd*) ; 
 int FUNC6 (struct rxe_pd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ib_udata*,struct rxe_pd*) ; 
 struct rxe_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct rxe_pd* FUNC8 (struct ib_pd*) ; 

__attribute__((used)) static struct ib_mr *FUNC9(struct ib_pd *ibpd,
				     u64 start,
				     u64 length,
				     u64 iova,
				     int access, struct ib_udata *udata)
{
	int err;
	struct rxe_dev *rxe = FUNC7(ibpd->device);
	struct rxe_pd *pd = FUNC8(ibpd);
	struct rxe_mem *mr;

	mr = FUNC3(&rxe->mr_pool);
	if (!mr) {
		err = -ENOMEM;
		goto err2;
	}

	FUNC1(mr);

	FUNC2(pd);

	err = FUNC6(pd, start, length, iova,
				access, udata, mr);
	if (err)
		goto err3;

	return &mr->ibmr;

err3:
	FUNC5(pd);
	FUNC4(mr);
	FUNC5(mr);
err2:
	return FUNC0(err);
}