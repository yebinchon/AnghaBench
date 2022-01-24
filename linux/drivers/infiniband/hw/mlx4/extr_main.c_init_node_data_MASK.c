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
struct TYPE_3__ {int /*<<< orphan*/  node_guid; int /*<<< orphan*/ * node_desc; } ;
struct mlx4_ib_dev {TYPE_1__ ib_dev; TYPE_2__* dev; } ;
struct ib_smp {scalar_t__ data; int /*<<< orphan*/  attr_id; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  rev_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_DEVICE_NODE_DESC_MAX ; 
 int /*<<< orphan*/  IB_SMP_ATTR_NODE_DESC ; 
 int /*<<< orphan*/  IB_SMP_ATTR_NODE_INFO ; 
 int MLX4_MAD_IFC_IGNORE_KEYS ; 
 int MLX4_MAD_IFC_NET_VIEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_smp*) ; 
 struct ib_smp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ib_smp* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC6 (struct mlx4_ib_dev*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct mlx4_ib_dev *dev)
{
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad = NULL;
	int mad_ifc_flags = MLX4_MAD_IFC_IGNORE_KEYS;
	int err = -ENOMEM;

	in_mad  = FUNC4(sizeof *in_mad, GFP_KERNEL);
	out_mad = FUNC3(sizeof *out_mad, GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	FUNC1(in_mad);
	in_mad->attr_id = IB_SMP_ATTR_NODE_DESC;
	if (FUNC7(dev->dev))
		mad_ifc_flags |= MLX4_MAD_IFC_NET_VIEW;

	err = FUNC6(dev, mad_ifc_flags, 1, NULL, NULL, in_mad, out_mad);
	if (err)
		goto out;

	FUNC5(dev->ib_dev.node_desc, out_mad->data, IB_DEVICE_NODE_DESC_MAX);

	in_mad->attr_id = IB_SMP_ATTR_NODE_INFO;

	err = FUNC6(dev, mad_ifc_flags, 1, NULL, NULL, in_mad, out_mad);
	if (err)
		goto out;

	dev->dev->rev_id = FUNC0((__be32 *) (out_mad->data + 32));
	FUNC5(&dev->ib_dev.node_guid, out_mad->data + 12, 8);

out:
	FUNC2(in_mad);
	FUNC2(out_mad);
	return err;
}