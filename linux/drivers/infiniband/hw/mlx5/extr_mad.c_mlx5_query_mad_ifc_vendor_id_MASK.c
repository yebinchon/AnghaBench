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
typedef  int u32 ;
struct ib_smp {scalar_t__ data; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_smp*) ; 
 struct ib_smp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ib_device*,struct ib_smp*) ; 

int FUNC4(struct ib_device *ibdev,
				 u32 *vendor_id)
{
	struct ib_smp *out_mad = NULL;
	int err = -ENOMEM;

	out_mad = FUNC2(sizeof(*out_mad), GFP_KERNEL);
	if (!out_mad)
		return -ENOMEM;

	err = FUNC3(ibdev, out_mad);
	if (err)
		goto out;

	*vendor_id = FUNC0((__be32 *)(out_mad->data + 36)) & 0xffff;

out:
	FUNC1(out_mad);

	return err;
}