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
struct ib_mr {int dummy; } ;
struct rxe_pd {struct ib_mr ibmr; } ;
struct rxe_mem {struct ib_mr ibmr; } ;
struct rxe_dev {int /*<<< orphan*/  mr_pool; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_pd*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_pd*) ; 
 struct rxe_pd* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rxe_pd*) ; 
 int /*<<< orphan*/  FUNC5 (struct rxe_pd*) ; 
 int FUNC6 (struct rxe_pd*,int,struct rxe_pd*) ; 
 struct rxe_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct rxe_pd* FUNC8 (struct ib_pd*) ; 

__attribute__((used)) static struct ib_mr *FUNC9(struct ib_pd *ibpd, int access)
{
	struct rxe_dev *rxe = FUNC7(ibpd->device);
	struct rxe_pd *pd = FUNC8(ibpd);
	struct rxe_mem *mr;
	int err;

	mr = FUNC3(&rxe->mr_pool);
	if (!mr) {
		err = -ENOMEM;
		goto err1;
	}

	FUNC1(mr);

	FUNC2(pd);

	err = FUNC6(pd, access, mr);
	if (err)
		goto err2;

	return &mr->ibmr;

err2:
	FUNC5(pd);
	FUNC4(mr);
	FUNC5(mr);
err1:
	return FUNC0(err);
}