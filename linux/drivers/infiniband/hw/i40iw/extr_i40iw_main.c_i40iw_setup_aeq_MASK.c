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
struct i40iw_sc_dev {int dummy; } ;
struct i40iw_device {TYPE_1__* iw_msixtbl; int /*<<< orphan*/  msix_shared; struct i40iw_sc_dev sc_dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int FUNC0 (struct i40iw_device*) ; 
 int FUNC1 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC4(struct i40iw_device *iwdev)
{
	struct i40iw_sc_dev *dev = &iwdev->sc_dev;
	enum i40iw_status_code status;

	status = FUNC1(iwdev);
	if (status)
		return status;

	status = FUNC0(iwdev);
	if (status) {
		FUNC2(iwdev);
		return status;
	}

	if (!iwdev->msix_shared)
		FUNC3(dev, iwdev->iw_msixtbl[0].idx);
	return 0;
}