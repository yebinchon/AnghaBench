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
typedef  int /*<<< orphan*/  uresp ;
typedef  int /*<<< orphan*/  ureq ;
typedef  int u64 ;
struct siw_uresp_reg_mr {int /*<<< orphan*/  stag; } ;
struct siw_ureq_reg_mr {int /*<<< orphan*/  stag_key; } ;
struct siw_umem {int dummy; } ;
struct ib_mr {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct siw_mr {struct siw_mem* mem; struct ib_mr base_mr; } ;
struct siw_mem {int stag_valid; int /*<<< orphan*/  stag; } ;
struct siw_device {int /*<<< orphan*/  num_mr; } ;
struct ib_udata {int inlen; int outlen; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long locked_vm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct siw_umem*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC3 (struct siw_umem*) ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 unsigned long RLIM_INFINITY ; 
 scalar_t__ SIW_MAX_MR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct siw_ureq_reg_mr*,struct ib_udata*,int) ; 
 int FUNC8 (struct ib_udata*,struct siw_uresp_reg_mr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct siw_mr*,int /*<<< orphan*/ ) ; 
 struct siw_mr* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ib_pd*,char*,...) ; 
 int FUNC13 (struct siw_mr*,struct ib_pd*,struct siw_umem*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct siw_mr*) ; 
 struct siw_umem* FUNC15 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct siw_umem*,int) ; 
 struct siw_device* FUNC17 (int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC18(struct ib_pd *pd, u64 start, u64 len,
			      u64 rnic_va, int rights, struct ib_udata *udata)
{
	struct siw_mr *mr = NULL;
	struct siw_umem *umem = NULL;
	struct siw_ureq_reg_mr ureq;
	struct siw_device *sdev = FUNC17(pd->device);

	unsigned long mem_limit = FUNC11(RLIMIT_MEMLOCK);
	int rv;

	FUNC12(pd, "start: 0x%pK, va: 0x%pK, len: %llu\n",
		   (void *)(uintptr_t)start, (void *)(uintptr_t)rnic_va,
		   (unsigned long long)len);

	if (FUNC5(&sdev->num_mr) > SIW_MAX_MR) {
		FUNC12(pd, "too many mr's\n");
		rv = -ENOMEM;
		goto err_out;
	}
	if (!len) {
		rv = -EINVAL;
		goto err_out;
	}
	if (mem_limit != RLIM_INFINITY) {
		unsigned long num_pages =
			(FUNC2(len + (start & ~PAGE_MASK))) >> PAGE_SHIFT;
		mem_limit >>= PAGE_SHIFT;

		if (num_pages > mem_limit - current->mm->locked_vm) {
			FUNC12(pd, "pages req %lu, max %lu, lock %lu\n",
				   num_pages, mem_limit,
				   current->mm->locked_vm);
			rv = -ENOMEM;
			goto err_out;
		}
	}
	umem = FUNC15(start, len, FUNC6(rights));
	if (FUNC1(umem)) {
		rv = FUNC3(umem);
		FUNC12(pd, "getting user memory failed: %d\n", rv);
		umem = NULL;
		goto err_out;
	}
	mr = FUNC10(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		rv = -ENOMEM;
		goto err_out;
	}
	rv = FUNC13(mr, pd, umem, start, len, rights);
	if (rv)
		goto err_out;

	if (udata) {
		struct siw_uresp_reg_mr uresp = {};
		struct siw_mem *mem = mr->mem;

		if (udata->inlen < sizeof(ureq)) {
			rv = -EINVAL;
			goto err_out;
		}
		rv = FUNC7(&ureq, udata, sizeof(ureq));
		if (rv)
			goto err_out;

		mr->base_mr.lkey |= ureq.stag_key;
		mr->base_mr.rkey |= ureq.stag_key;
		mem->stag |= ureq.stag_key;
		uresp.stag = mem->stag;

		if (udata->outlen < sizeof(uresp)) {
			rv = -EINVAL;
			goto err_out;
		}
		rv = FUNC8(udata, &uresp, sizeof(uresp));
		if (rv)
			goto err_out;
	}
	mr->mem->stag_valid = 1;

	return &mr->base_mr;

err_out:
	FUNC4(&sdev->num_mr);
	if (mr) {
		if (mr->mem)
			FUNC14(mr);
		FUNC9(mr, rcu);
	} else {
		if (umem)
			FUNC16(umem, false);
	}
	return FUNC0(rv);
}