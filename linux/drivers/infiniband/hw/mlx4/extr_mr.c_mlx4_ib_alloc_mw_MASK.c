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
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct ib_mw {int /*<<< orphan*/  rkey; } ;
struct mlx4_ib_mw {TYPE_2__ mmw; struct ib_mw ibmw; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  enum ib_mw_type { ____Placeholder_ib_mw_type } ib_mw_type ;
struct TYPE_5__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_mw*) ; 
 struct mlx4_ib_mw* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct mlx4_ib_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* FUNC8 (struct ib_pd*) ; 

struct ib_mw *FUNC9(struct ib_pd *pd, enum ib_mw_type type,
			       struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC6(pd->device);
	struct mlx4_ib_mw *mw;
	int err;

	mw = FUNC2(sizeof(*mw), GFP_KERNEL);
	if (!mw)
		return FUNC0(-ENOMEM);

	err = FUNC3(dev->dev, FUNC8(pd)->pdn,
			    FUNC7(type), &mw->mmw);
	if (err)
		goto err_free;

	err = FUNC4(dev->dev, &mw->mmw);
	if (err)
		goto err_mw;

	mw->ibmw.rkey = mw->mmw.key;

	return &mw->ibmw;

err_mw:
	FUNC5(dev->dev, &mw->mmw);

err_free:
	FUNC1(mw);

	return FUNC0(err);
}