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
typedef  unsigned int u64 ;
struct pbl_context {int dummy; } ;
struct ib_udata {scalar_t__ inlen; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_mr {int lkey; unsigned int length; int /*<<< orphan*/  rkey; } ;
struct efa_mr {int /*<<< orphan*/  umem; struct ib_mr ibmr; } ;
struct TYPE_8__ {int /*<<< orphan*/  reg_mr_err; } ;
struct TYPE_9__ {TYPE_3__ sw_stats; } ;
struct TYPE_6__ {int page_size_cap; } ;
struct efa_dev {TYPE_4__ stats; int /*<<< orphan*/  ibdev; int /*<<< orphan*/  edev; TYPE_1__ dev_attr; } ;
struct efa_com_reg_mr_result {int l_key; int /*<<< orphan*/  r_key; } ;
struct TYPE_7__ {int /*<<< orphan*/  inline_pbl_array; } ;
struct efa_com_reg_mr_params {unsigned int iova; unsigned int mr_length_in_bytes; int permissions; int page_num; TYPE_2__ pbl; int /*<<< orphan*/  page_shift; int /*<<< orphan*/  pd; } ;
struct TYPE_10__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 int EFA_SUPPORTED_ACCESS_FLAGS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct ib_mr* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct efa_com_reg_mr_params*,struct efa_com_reg_mr_result*) ; 
 int FUNC8 (struct efa_dev*,struct efa_mr*,struct efa_com_reg_mr_params*) ; 
 int FUNC9 (struct efa_dev*,struct pbl_context*,struct efa_mr*,struct efa_com_reg_mr_params*) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_udata*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct ib_udata*,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct efa_mr*) ; 
 struct efa_mr* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct efa_dev*,struct pbl_context*) ; 
 struct efa_dev* FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC19 (struct ib_pd*) ; 

struct ib_mr *FUNC20(struct ib_pd *ibpd, u64 start, u64 length,
			 u64 virt_addr, int access_flags,
			 struct ib_udata *udata)
{
	struct efa_dev *dev = FUNC18(ibpd->device);
	struct efa_com_reg_mr_params params = {};
	struct efa_com_reg_mr_result result = {};
	struct pbl_context pbl;
	unsigned int pg_sz;
	struct efa_mr *mr;
	int inline_size;
	int err;

	if (udata->inlen &&
	    !FUNC10(udata, 0, sizeof(udata->inlen))) {
		FUNC14(&dev->ibdev,
			  "Incompatible ABI params, udata not cleared\n");
		err = -EINVAL;
		goto err_out;
	}

	if (access_flags & ~EFA_SUPPORTED_ACCESS_FLAGS) {
		FUNC14(&dev->ibdev,
			  "Unsupported access flags[%#x], supported[%#x]\n",
			  access_flags, EFA_SUPPORTED_ACCESS_FLAGS);
		err = -EOPNOTSUPP;
		goto err_out;
	}

	mr = FUNC16(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		err = -ENOMEM;
		goto err_out;
	}

	mr->umem = FUNC12(udata, start, length, access_flags, 0);
	if (FUNC3(mr->umem)) {
		err = FUNC4(mr->umem);
		FUNC14(&dev->ibdev,
			  "Failed to pin and map user space memory[%d]\n", err);
		goto err_free;
	}

	params.pd = FUNC19(ibpd)->pdn;
	params.iova = virt_addr;
	params.mr_length_in_bytes = length;
	params.permissions = access_flags & 0x1;

	pg_sz = FUNC11(mr->umem,
				       dev->dev_attr.page_size_cap,
				       virt_addr);
	if (!pg_sz) {
		err = -EOPNOTSUPP;
		FUNC14(&dev->ibdev, "Failed to find a suitable page size in page_size_cap %#llx\n",
			  dev->dev_attr.page_size_cap);
		goto err_unmap;
	}

	params.page_shift = FUNC5(pg_sz);
	params.page_num = FUNC1(length + (start & (pg_sz - 1)),
				       pg_sz);

	FUNC14(&dev->ibdev,
		  "start %#llx length %#llx params.page_shift %u params.page_num %u\n",
		  start, length, params.page_shift, params.page_num);

	inline_size = FUNC0(params.pbl.inline_pbl_array);
	if (params.page_num <= inline_size) {
		err = FUNC8(dev, mr, &params);
		if (err)
			goto err_unmap;

		err = FUNC7(&dev->edev, &params, &result);
		if (err)
			goto err_unmap;
	} else {
		err = FUNC9(dev, &pbl, mr, &params);
		if (err)
			goto err_unmap;

		err = FUNC7(&dev->edev, &params, &result);
		FUNC17(dev, &pbl);

		if (err)
			goto err_unmap;
	}

	mr->ibmr.lkey = result.l_key;
	mr->ibmr.rkey = result.r_key;
	mr->ibmr.length = length;
	FUNC14(&dev->ibdev, "Registered mr[%d]\n", mr->ibmr.lkey);

	return &mr->ibmr;

err_unmap:
	FUNC13(mr->umem);
err_free:
	FUNC15(mr);
err_out:
	FUNC6(&dev->stats.sw_stats.reg_mr_err);
	return FUNC2(err);
}