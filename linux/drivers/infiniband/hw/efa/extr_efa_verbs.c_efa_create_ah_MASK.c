#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  raw; } ;
struct TYPE_7__ {TYPE_1__ dgid; } ;
struct rdma_ah_attr {TYPE_2__ grh; } ;
struct ib_udata {scalar_t__ outlen; scalar_t__ inlen; } ;
struct ib_ah {int /*<<< orphan*/  pd; int /*<<< orphan*/  device; } ;
struct efa_ibv_create_ah_resp {int /*<<< orphan*/  efa_address_handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  create_ah_err; } ;
struct TYPE_9__ {TYPE_3__ sw_stats; } ;
struct efa_dev {TYPE_4__ stats; int /*<<< orphan*/  ibdev; int /*<<< orphan*/  edev; } ;
struct efa_com_create_ah_result {int /*<<< orphan*/  ah; } ;
struct efa_com_create_ah_params {int /*<<< orphan*/  pdn; int /*<<< orphan*/  dest_addr; } ;
struct efa_ah {int /*<<< orphan*/  ah; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  resp ;
struct TYPE_10__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int RDMA_CREATE_AH_SLEEPABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct efa_dev*,struct efa_ah*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct efa_com_create_ah_params*,struct efa_com_create_ah_result*) ; 
 int FUNC3 (struct ib_udata*,struct efa_ibv_create_ah_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_udata*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 struct efa_ah* FUNC8 (struct ib_ah*) ; 
 struct efa_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct ib_ah *ibah,
		  struct rdma_ah_attr *ah_attr,
		  u32 flags,
		  struct ib_udata *udata)
{
	struct efa_dev *dev = FUNC9(ibah->device);
	struct efa_com_create_ah_params params = {};
	struct efa_ibv_create_ah_resp resp = {};
	struct efa_com_create_ah_result result;
	struct efa_ah *ah = FUNC8(ibah);
	int err;

	if (!(flags & RDMA_CREATE_AH_SLEEPABLE)) {
		FUNC5(&dev->ibdev,
			  "Create address handle is not supported in atomic context\n");
		err = -EOPNOTSUPP;
		goto err_out;
	}

	if (udata->inlen &&
	    !FUNC4(udata, 0, udata->inlen)) {
		FUNC5(&dev->ibdev, "Incompatible ABI params\n");
		err = -EINVAL;
		goto err_out;
	}

	FUNC6(params.dest_addr, ah_attr->grh.dgid.raw,
	       sizeof(params.dest_addr));
	params.pdn = FUNC10(ibah->pd)->pdn;
	err = FUNC2(&dev->edev, &params, &result);
	if (err)
		goto err_out;

	FUNC6(ah->id, ah_attr->grh.dgid.raw, sizeof(ah->id));
	ah->ah = result.ah;

	resp.efa_address_handle = result.ah;

	if (udata->outlen) {
		err = FUNC3(udata, &resp,
				       FUNC7(sizeof(resp), udata->outlen));
		if (err) {
			FUNC5(&dev->ibdev,
				  "Failed to copy udata for create_ah response\n");
			goto err_destroy_ah;
		}
	}
	FUNC5(&dev->ibdev, "Created ah[%d]\n", ah->ah);

	return 0;

err_destroy_ah:
	FUNC1(dev, ah);
err_out:
	FUNC0(&dev->stats.sw_stats.create_ah_err);
	return err;
}