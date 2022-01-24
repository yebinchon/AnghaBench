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
struct ib_smp {scalar_t__ data; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ib_smp*) ; 
 struct ib_smp* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC3 (struct ib_device*,struct ib_smp*) ; 

int FUNC4(struct ib_device *ibdev,
					 __be64 *sys_image_guid)
{
	struct ib_smp *out_mad = NULL;
	int err = -ENOMEM;

	out_mad = FUNC1(sizeof(*out_mad), GFP_KERNEL);
	if (!out_mad)
		return -ENOMEM;

	err = FUNC3(ibdev, out_mad);
	if (err)
		goto out;

	FUNC2(sys_image_guid, out_mad->data + 4, 8);

out:
	FUNC0(out_mad);

	return err;
}