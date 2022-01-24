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
struct ib_mr {scalar_t__ rkey; scalar_t__ lkey; } ;
struct usnic_ib_mr {struct ib_mr ibmr; scalar_t__ umem; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  umem_pd; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct usnic_ib_mr*) ; 
 struct usnic_ib_mr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC8(struct ib_pd *pd, u64 start, u64 length,
					u64 virt_addr, int access_flags,
					struct ib_udata *udata)
{
	struct usnic_ib_mr *mr;
	int err;

	FUNC6("start 0x%llx va 0x%llx length 0x%llx\n", start,
			virt_addr, length);

	mr = FUNC4(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	mr->umem = FUNC7(FUNC5(pd)->umem_pd, start, length,
					access_flags, 0);
	if (FUNC1(mr->umem)) {
		err = mr->umem ? FUNC2(mr->umem) : -EFAULT;
		goto err_free;
	}

	mr->ibmr.lkey = mr->ibmr.rkey = 0;
	return &mr->ibmr;

err_free:
	FUNC3(mr);
	return FUNC0(err);
}