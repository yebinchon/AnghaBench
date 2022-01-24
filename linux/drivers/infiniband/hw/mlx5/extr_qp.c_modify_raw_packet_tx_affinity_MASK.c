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
typedef  int u8 ;
struct mlx5_ib_sq {int /*<<< orphan*/  tisn; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_pd {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lag_tx_port_affinity; } ;
struct TYPE_3__ {int uid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (void*) ; 
 TYPE_2__ bitmask ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lag_tx_port_affinity ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*,int) ; 
 void* modify_tis_in ; 
 TYPE_1__* FUNC6 (struct ib_pd*) ; 
 int /*<<< orphan*/  uid ; 

__attribute__((used)) static int FUNC7(struct mlx5_core_dev *dev,
					 struct mlx5_ib_sq *sq, u8 tx_affinity,
					 struct ib_pd *pd)
{
	void *in;
	void *tisc;
	int inlen;
	int err;

	inlen = FUNC2(modify_tis_in);
	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC1(modify_tis_in, in, bitmask.lag_tx_port_affinity, 1);
	FUNC1(modify_tis_in, in, uid, FUNC6(pd)->uid);

	tisc = FUNC0(modify_tis_in, in, ctx);
	FUNC1(tisc, tisc, lag_tx_port_affinity, tx_affinity);

	err = FUNC5(dev, sq->tisn, in, inlen);

	FUNC3(in);

	return err;
}