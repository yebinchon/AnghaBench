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
struct mlx5_ib_dev {int dummy; } ;
struct ib_smp {scalar_t__ data; int /*<<< orphan*/  attr_id; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_SMP_ATTR_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_smp*) ; 
 struct ib_smp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ib_smp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC5 (struct mlx5_ib_dev*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 

int FUNC6(struct mlx5_ib_dev *dev, __be64 *node_guid)
{
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad = NULL;
	int err = -ENOMEM;

	in_mad  = FUNC3(sizeof(*in_mad), GFP_KERNEL);
	out_mad = FUNC2(sizeof(*out_mad), GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	FUNC0(in_mad);
	in_mad->attr_id = IB_SMP_ATTR_NODE_INFO;

	err = FUNC5(dev, 1, 1, 1, NULL, NULL, in_mad, out_mad);
	if (err)
		goto out;

	FUNC4(node_guid, out_mad->data + 12, 8);
out:
	FUNC1(in_mad);
	FUNC1(out_mad);
	return err;
}