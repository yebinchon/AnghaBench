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
struct ib_udata {scalar_t__ outlen; scalar_t__ inlen; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct efa_pd {int /*<<< orphan*/  pdn; } ;
struct efa_ibv_alloc_pd_resp {int /*<<< orphan*/  pdn; } ;
struct TYPE_3__ {int /*<<< orphan*/  alloc_pd_err; } ;
struct TYPE_4__ {TYPE_1__ sw_stats; } ;
struct efa_dev {TYPE_2__ stats; int /*<<< orphan*/  ibdev; int /*<<< orphan*/  edev; } ;
struct efa_com_alloc_pd_result {int /*<<< orphan*/  pdn; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct efa_com_alloc_pd_result*) ; 
 int /*<<< orphan*/  FUNC2 (struct efa_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ib_udata*,struct efa_ibv_alloc_pd_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_udata*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 struct efa_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct efa_pd* FUNC8 (struct ib_pd*) ; 

int FUNC9(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct efa_dev *dev = FUNC7(ibpd->device);
	struct efa_ibv_alloc_pd_resp resp = {};
	struct efa_com_alloc_pd_result result;
	struct efa_pd *pd = FUNC8(ibpd);
	int err;

	if (udata->inlen &&
	    !FUNC4(udata, 0, udata->inlen)) {
		FUNC5(&dev->ibdev,
			  "Incompatible ABI params, udata not cleared\n");
		err = -EINVAL;
		goto err_out;
	}

	err = FUNC1(&dev->edev, &result);
	if (err)
		goto err_out;

	pd->pdn = result.pdn;
	resp.pdn = result.pdn;

	if (udata->outlen) {
		err = FUNC3(udata, &resp,
				       FUNC6(sizeof(resp), udata->outlen));
		if (err) {
			FUNC5(&dev->ibdev,
				  "Failed to copy udata for alloc_pd\n");
			goto err_dealloc_pd;
		}
	}

	FUNC5(&dev->ibdev, "Allocated pd[%d]\n", pd->pdn);

	return 0;

err_dealloc_pd:
	FUNC2(dev, result.pdn);
err_out:
	FUNC0(&dev->stats.sw_stats.alloc_pd_err);
	return err;
}