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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct mlx4_ib_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  dev; } ;
struct ib_smp {int base_version; int class_version; int /*<<< orphan*/  data; int /*<<< orphan*/  attr_mod; int /*<<< orphan*/  attr_id; int /*<<< orphan*/  method; int /*<<< orphan*/  mgmt_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_MGMT_CLASS_SUBN_LID_ROUTED ; 
 int /*<<< orphan*/  IB_MGMT_METHOD_GET ; 
 int /*<<< orphan*/  IB_SMP_ATTR_GUID_INFO ; 
 int MLX4_MAD_IFC_IGNORE_KEYS ; 
 int MLX4_MAD_IFC_NET_VIEW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_smp*) ; 
 struct ib_smp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_smp*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mlx4_ib_dev *dev, u8 port_num,
				      u32 guid_tbl_blk_num, u32 change_bitmap)
{
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad  = NULL;
	u16 i;

	if (!FUNC9(dev->dev) || !FUNC8(dev->dev))
		return;

	in_mad  = FUNC2(sizeof *in_mad, GFP_KERNEL);
	out_mad = FUNC2(sizeof *out_mad, GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	guid_tbl_blk_num  *= 4;

	for (i = 0; i < 4; i++) {
		if (change_bitmap && (!((change_bitmap >> (8 * i)) & 0xff)))
			continue;
		FUNC3(in_mad, 0, sizeof *in_mad);
		FUNC3(out_mad, 0, sizeof *out_mad);

		in_mad->base_version  = 1;
		in_mad->mgmt_class    = IB_MGMT_CLASS_SUBN_LID_ROUTED;
		in_mad->class_version = 1;
		in_mad->method        = IB_MGMT_METHOD_GET;
		in_mad->attr_id       = IB_SMP_ATTR_GUID_INFO;
		in_mad->attr_mod      = FUNC0(guid_tbl_blk_num + i);

		if (FUNC4(dev,
				 MLX4_MAD_IFC_IGNORE_KEYS | MLX4_MAD_IFC_NET_VIEW,
				 port_num, NULL, NULL, in_mad, out_mad)) {
			FUNC7(&dev->ib_dev, "Failed in get GUID INFO MAD_IFC\n");
			goto out;
		}

		FUNC6(dev, guid_tbl_blk_num + i,
						    port_num,
						    (u8 *)(&((struct ib_smp *)out_mad)->data));
		FUNC5(dev, guid_tbl_blk_num + i,
						     port_num,
						     (u8 *)(&((struct ib_smp *)out_mad)->data));
	}

out:
	FUNC1(in_mad);
	FUNC1(out_mad);
	return;
}