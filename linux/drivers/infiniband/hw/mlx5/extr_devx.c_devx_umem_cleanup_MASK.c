#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct uverbs_attr_bundle {int dummy; } ;
struct ib_uobject {struct devx_umem* object; } ;
struct devx_umem {int /*<<< orphan*/  umem; int /*<<< orphan*/  dinlen; int /*<<< orphan*/  dinbox; int /*<<< orphan*/  mdev; } ;
typedef  int /*<<< orphan*/  out ;
typedef  enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  general_obj_out_cmd_hdr ; 
 scalar_t__ FUNC1 (int,int,struct ib_uobject*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devx_umem*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct ib_uobject *uobject,
			     enum rdma_remove_reason why,
			     struct uverbs_attr_bundle *attrs)
{
	struct devx_umem *obj = uobject->object;
	u32 out[FUNC0(general_obj_out_cmd_hdr)];
	int err;

	err = FUNC4(obj->mdev, obj->dinbox, obj->dinlen, out, sizeof(out));
	if (FUNC1(err, why, uobject))
		return err;

	FUNC2(obj->umem);
	FUNC3(obj);
	return 0;
}