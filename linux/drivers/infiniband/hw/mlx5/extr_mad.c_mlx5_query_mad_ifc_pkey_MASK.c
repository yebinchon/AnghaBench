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
typedef  int u16 ;
struct ib_smp {scalar_t__ data; int /*<<< orphan*/  attr_mod; int /*<<< orphan*/  attr_id; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_SMP_ATTR_PKEY_TABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_smp*) ; 
 struct ib_smp* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ib_smp* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*) ; 

int FUNC8(struct ib_device *ibdev, u8 port, u16 index,
			    u16 *pkey)
{
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad = NULL;
	int err = -ENOMEM;

	in_mad  = FUNC5(sizeof(*in_mad), GFP_KERNEL);
	out_mad = FUNC4(sizeof(*out_mad), GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	FUNC2(in_mad);
	in_mad->attr_id  = IB_SMP_ATTR_PKEY_TABLE;
	in_mad->attr_mod = FUNC1(index / 32);

	err = FUNC6(FUNC7(ibdev), 1, 1, port, NULL, NULL, in_mad,
			   out_mad);
	if (err)
		goto out;

	*pkey = FUNC0(((__be16 *)out_mad->data)[index % 32]);

out:
	FUNC3(in_mad);
	FUNC3(out_mad);
	return err;
}