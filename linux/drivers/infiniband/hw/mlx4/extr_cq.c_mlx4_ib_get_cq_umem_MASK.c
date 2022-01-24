#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct mlx4_ib_cq_buf {int /*<<< orphan*/  mtt; } ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;
struct TYPE_4__ {int cqe_size; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ACCESS_LOCAL_WRITE ; 
 scalar_t__ FUNC0 (struct ib_umem*) ; 
 int FUNC1 (struct ib_umem*) ; 
 struct ib_umem* FUNC2 (struct ib_udata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_umem*) ; 
 int FUNC5 (struct ib_umem*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct mlx4_ib_dev*,int /*<<< orphan*/ *,struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mlx4_ib_dev *dev, struct ib_udata *udata,
			       struct mlx4_ib_cq_buf *buf,
			       struct ib_umem **umem, u64 buf_addr, int cqe)
{
	int err;
	int cqe_size = dev->dev->caps.cqe_size;
	int shift;
	int n;

	*umem = FUNC2(udata, buf_addr, cqe * cqe_size,
			    IB_ACCESS_LOCAL_WRITE, 1);
	if (FUNC0(*umem))
		return FUNC1(*umem);

	n = FUNC3(*umem);
	shift = FUNC5(*umem, 0, &n);
	err = FUNC8(dev->dev, n, shift, &buf->mtt);

	if (err)
		goto err_buf;

	err = FUNC6(dev, &buf->mtt, *umem);
	if (err)
		goto err_mtt;

	return 0;

err_mtt:
	FUNC7(dev->dev, &buf->mtt);

err_buf:
	FUNC4(*umem);

	return err;
}