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
union ib_gid {scalar_t__ raw; } ;
typedef  int u8 ;
struct ib_smp {scalar_t__ data; void* attr_mod; int /*<<< orphan*/  attr_id; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_SMP_ATTR_GUID_INFO ; 
 int /*<<< orphan*/  IB_SMP_ATTR_PORT_INFO ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_smp*) ; 
 struct ib_smp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ib_smp* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*) ; 

int FUNC8(struct ib_device *ibdev, u8 port, int index,
			    union ib_gid *gid)
{
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad = NULL;
	int err = -ENOMEM;

	in_mad  = FUNC4(sizeof(*in_mad), GFP_KERNEL);
	out_mad = FUNC3(sizeof(*out_mad), GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	FUNC1(in_mad);
	in_mad->attr_id  = IB_SMP_ATTR_PORT_INFO;
	in_mad->attr_mod = FUNC0(port);

	err = FUNC6(FUNC7(ibdev), 1, 1, port, NULL, NULL, in_mad,
			   out_mad);
	if (err)
		goto out;

	FUNC5(gid->raw, out_mad->data + 8, 8);

	FUNC1(in_mad);
	in_mad->attr_id  = IB_SMP_ATTR_GUID_INFO;
	in_mad->attr_mod = FUNC0(index / 8);

	err = FUNC6(FUNC7(ibdev), 1, 1, port, NULL, NULL, in_mad,
			   out_mad);
	if (err)
		goto out;

	FUNC5(gid->raw + 8, out_mad->data + (index % 8) * 8, 8);

out:
	FUNC2(in_mad);
	FUNC2(out_mad);
	return err;
}