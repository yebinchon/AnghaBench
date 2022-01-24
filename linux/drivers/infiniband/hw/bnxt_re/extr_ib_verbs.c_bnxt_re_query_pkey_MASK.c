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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkey_tbl; } ;
struct bnxt_re_dev {TYPE_1__ qplib_res; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bnxt_re_dev* FUNC2 (struct ib_device*,struct ib_device*) ; 

int FUNC3(struct ib_device *ibdev, u8 port_num,
		       u16 index, u16 *pkey)
{
	struct bnxt_re_dev *rdev = FUNC2(ibdev, ibdev);

	/* Ignore port_num */

	FUNC1(pkey, 0, sizeof(*pkey));
	return FUNC0(&rdev->qplib_res,
				   &rdev->qplib_res.pkey_tbl, index, pkey);
}