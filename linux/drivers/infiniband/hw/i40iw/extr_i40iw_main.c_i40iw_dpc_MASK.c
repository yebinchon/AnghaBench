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
struct i40iw_device {TYPE_1__* iw_msixtbl; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  ceqlist; scalar_t__ msix_shared; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct i40iw_device *iwdev = (struct i40iw_device *)data;

	if (iwdev->msix_shared)
		FUNC2(iwdev, iwdev->ceqlist);
	FUNC1(iwdev);
	FUNC0(&iwdev->sc_dev, iwdev->iw_msixtbl[0].idx);
}