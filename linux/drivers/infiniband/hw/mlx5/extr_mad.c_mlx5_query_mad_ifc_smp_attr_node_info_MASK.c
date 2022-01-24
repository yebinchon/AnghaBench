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
struct ib_smp {int /*<<< orphan*/  attr_id; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_SMP_ATTR_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_smp*) ; 
 struct ib_smp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 

int FUNC5(struct ib_device *ibdev,
					  struct ib_smp *out_mad)
{
	struct ib_smp *in_mad = NULL;
	int err = -ENOMEM;

	in_mad = FUNC2(sizeof(*in_mad), GFP_KERNEL);
	if (!in_mad)
		return -ENOMEM;

	FUNC0(in_mad);
	in_mad->attr_id = IB_SMP_ATTR_NODE_INFO;

	err = FUNC3(FUNC4(ibdev), 1, 1, 1, NULL, NULL, in_mad,
			   out_mad);

	FUNC1(in_mad);
	return err;
}