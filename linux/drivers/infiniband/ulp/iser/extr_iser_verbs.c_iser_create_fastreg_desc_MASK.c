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
struct TYPE_4__ {int /*<<< orphan*/  mr; scalar_t__ mr_valid; int /*<<< orphan*/  sig_mr; } ;
struct iser_fr_desc {TYPE_2__ rsc; } ;
struct iser_device {struct ib_device* ib_device; } ;
struct ib_pd {int dummy; } ;
struct TYPE_3__ {int device_cap_flags; } ;
struct ib_device {TYPE_1__ attrs; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;

/* Variables and functions */
 int ENOMEM ; 
 struct iser_fr_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_DEVICE_SG_GAPS_REG ; 
 int IB_MR_TYPE_MEM_REG ; 
 int IB_MR_TYPE_SG_GAPS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_pd*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_pd*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iser_fr_desc*) ; 
 struct iser_fr_desc* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iser_fr_desc *
FUNC9(struct iser_device *device,
			 struct ib_pd *pd,
			 bool pi_enable,
			 unsigned int size)
{
	struct iser_fr_desc *desc;
	struct ib_device *ib_dev = device->ib_device;
	enum ib_mr_type mr_type;
	int ret;

	desc = FUNC8(sizeof(*desc), GFP_KERNEL);
	if (!desc)
		return FUNC0(-ENOMEM);

	if (ib_dev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG)
		mr_type = IB_MR_TYPE_SG_GAPS;
	else
		mr_type = IB_MR_TYPE_MEM_REG;

	desc->rsc.mr = FUNC3(pd, mr_type, size);
	if (FUNC1(desc->rsc.mr)) {
		ret = FUNC2(desc->rsc.mr);
		FUNC6("Failed to allocate ib_fast_reg_mr err=%d\n", ret);
		goto err_alloc_mr;
	}

	if (pi_enable) {
		desc->rsc.sig_mr = FUNC4(pd, size, size);
		if (FUNC1(desc->rsc.sig_mr)) {
			ret = FUNC2(desc->rsc.sig_mr);
			FUNC6("Failed to allocate sig_mr err=%d\n", ret);
			goto err_alloc_mr_integrity;
		}
	}
	desc->rsc.mr_valid = 0;

	return desc;

err_alloc_mr_integrity:
	FUNC5(desc->rsc.mr);
err_alloc_mr:
	FUNC7(desc);

	return FUNC0(ret);
}