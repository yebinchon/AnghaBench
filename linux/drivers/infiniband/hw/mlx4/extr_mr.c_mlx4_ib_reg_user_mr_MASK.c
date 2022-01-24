#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct TYPE_6__ {int /*<<< orphan*/  key; int /*<<< orphan*/  mtt; } ;
struct ib_mr {unsigned int page_size; void* iova; void* length; int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct mlx4_ib_mr {int /*<<< orphan*/  umem; TYPE_2__ mmr; struct ib_mr ibmr; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_mr*) ; 
 struct mlx4_ib_mr* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_udata*,void*,void*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,void*,int*) ; 
 int FUNC10 (struct mlx4_ib_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int,int,TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct mlx4_ib_dev* FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (struct ib_pd*) ; 

struct ib_mr *FUNC16(struct ib_pd *pd, u64 start, u64 length,
				  u64 virt_addr, int access_flags,
				  struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC14(pd->device);
	struct mlx4_ib_mr *mr;
	int shift;
	int err;
	int n;

	mr = FUNC7(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	mr->umem = FUNC8(udata, start, length, access_flags);
	if (FUNC1(mr->umem)) {
		err = FUNC2(mr->umem);
		goto err_free;
	}

	n = FUNC4(mr->umem);
	shift = FUNC9(mr->umem, start, &n);

	err = FUNC11(dev->dev, FUNC15(pd)->pdn, virt_addr, length,
			    FUNC3(access_flags), n, shift, &mr->mmr);
	if (err)
		goto err_umem;

	err = FUNC10(dev, &mr->mmr.mtt, mr->umem);
	if (err)
		goto err_mr;

	err = FUNC12(dev->dev, &mr->mmr);
	if (err)
		goto err_mr;

	mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;
	mr->ibmr.length = length;
	mr->ibmr.iova = virt_addr;
	mr->ibmr.page_size = 1U << shift;

	return &mr->ibmr;

err_mr:
	(void) FUNC13(FUNC14(pd->device)->dev, &mr->mmr);

err_umem:
	FUNC5(mr->umem);

err_free:
	FUNC6(mr);

	return FUNC0(err);
}