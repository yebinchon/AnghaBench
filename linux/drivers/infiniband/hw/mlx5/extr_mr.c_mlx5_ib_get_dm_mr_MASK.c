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
struct ib_mr {int dummy; } ;
struct mlx5_ib_mr {struct ib_mr ibmr; int /*<<< orphan*/ * umem; int /*<<< orphan*/  mmkey; } ;
typedef  struct mlx5_ib_mr u32 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 void* FUNC1 (int /*<<< orphan*/ ,struct mlx5_ib_mr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,struct ib_pd*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct ib_pd* a ; 
 struct ib_pd* access_mode_1_0 ; 
 struct ib_pd* access_mode_4_2 ; 
 int /*<<< orphan*/  create_mkey_in ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_mr*) ; 
 struct mlx5_ib_mr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 struct ib_pd* lr ; 
 struct ib_pd* lw ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ *,struct mlx5_ib_mr*,int) ; 
 struct ib_pd* qpn ; 
 struct ib_pd* rr ; 
 struct ib_pd* rw ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*,struct mlx5_ib_mr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlx5_ib_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (struct ib_pd*) ; 

__attribute__((used)) static struct ib_mr *FUNC11(struct ib_pd *pd, u64 start_addr,
				       u64 length, int acc, int mode)
{
	struct mlx5_ib_dev *dev = FUNC9(pd->device);
	int inlen = FUNC4(create_mkey_in);
	struct mlx5_core_dev *mdev = dev->mdev;
	struct mlx5_ib_mr *mr;
	void *mkc;
	u32 *in;
	int err;

	mr = FUNC6(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	in = FUNC6(inlen, GFP_KERNEL);
	if (!in) {
		err = -ENOMEM;
		goto err_free;
	}

	mkc = FUNC1(create_mkey_in, in, memory_key_mkey_entry);

	FUNC2(mkc, mkc, access_mode_1_0, mode & 0x3);
	FUNC2(mkc, mkc, access_mode_4_2, (mode >> 2) & 0x7);
	FUNC2(mkc, mkc, a, !!(acc & IB_ACCESS_REMOTE_ATOMIC));
	FUNC2(mkc, mkc, rw, !!(acc & IB_ACCESS_REMOTE_WRITE));
	FUNC2(mkc, mkc, rr, !!(acc & IB_ACCESS_REMOTE_READ));
	FUNC2(mkc, mkc, lw, !!(acc & IB_ACCESS_LOCAL_WRITE));
	FUNC2(mkc, mkc, lr, 1);

	FUNC3(mkc, mkc, len, length);
	FUNC2(mkc, mkc, pd, FUNC10(pd)->pdn);
	FUNC2(mkc, mkc, qpn, 0xffffff);
	FUNC3(mkc, mkc, start_addr, start_addr);

	err = FUNC7(mdev, &mr->mmkey, in, inlen);
	if (err)
		goto err_in;

	FUNC5(in);

	mr->umem = NULL;
	FUNC8(dev, mr, 0, length, acc);

	return &mr->ibmr;

err_in:
	FUNC5(in);

err_free:
	FUNC5(mr);

	return FUNC0(err);
}