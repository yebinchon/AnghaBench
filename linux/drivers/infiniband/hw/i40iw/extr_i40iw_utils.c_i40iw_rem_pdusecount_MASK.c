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
struct TYPE_2__ {int /*<<< orphan*/  pd_id; } ;
struct i40iw_pd {TYPE_1__ sc_pd; int /*<<< orphan*/  usecount; } ;
struct i40iw_device {int /*<<< orphan*/  allocated_pds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct i40iw_pd *iwpd, struct i40iw_device *iwdev)
{
	if (!FUNC0(&iwpd->usecount))
		return;
	FUNC1(iwdev, iwdev->allocated_pds, iwpd->sc_pd.pd_id);
}