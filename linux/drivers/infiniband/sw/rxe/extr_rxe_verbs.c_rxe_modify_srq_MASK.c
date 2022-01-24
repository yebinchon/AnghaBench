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
typedef  int /*<<< orphan*/  ucmd ;
struct rxe_srq {int dummy; } ;
struct rxe_modify_srq_cmd {int dummy; } ;
struct rxe_dev {int dummy; } ;
struct ib_udata {int inlen; } ;
struct ib_srq_attr {int dummy; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
typedef  enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct rxe_modify_srq_cmd*,struct ib_udata*,int) ; 
 int FUNC1 (struct rxe_dev*,struct rxe_srq*,struct ib_srq_attr*,int) ; 
 int FUNC2 (struct rxe_dev*,struct rxe_srq*,struct ib_srq_attr*,int,struct rxe_modify_srq_cmd*,struct ib_udata*) ; 
 struct rxe_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct rxe_srq* FUNC4 (struct ib_srq*) ; 

__attribute__((used)) static int FUNC5(struct ib_srq *ibsrq, struct ib_srq_attr *attr,
			  enum ib_srq_attr_mask mask,
			  struct ib_udata *udata)
{
	int err;
	struct rxe_srq *srq = FUNC4(ibsrq);
	struct rxe_dev *rxe = FUNC3(ibsrq->device);
	struct rxe_modify_srq_cmd ucmd = {};

	if (udata) {
		if (udata->inlen < sizeof(ucmd))
			return -EINVAL;

		err = FUNC0(&ucmd, udata, sizeof(ucmd));
		if (err)
			return err;
	}

	err = FUNC1(rxe, srq, attr, mask);
	if (err)
		goto err1;

	err = FUNC2(rxe, srq, attr, mask, &ucmd, udata);
	if (err)
		goto err1;

	return 0;

err1:
	return err;
}