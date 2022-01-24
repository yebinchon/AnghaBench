#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct analogix_dp_device {int /*<<< orphan*/  clock; int /*<<< orphan*/  dev; int /*<<< orphan*/  aux; TYPE_2__* plat_data; TYPE_3__ connector; int /*<<< orphan*/  bridge; } ;
struct TYPE_5__ {scalar_t__ panel; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

void FUNC8(struct analogix_dp_device *dp)
{
	FUNC1(dp->bridge);
	dp->connector.funcs->destroy(&dp->connector);

	if (dp->plat_data->panel) {
		if (FUNC5(dp->plat_data->panel))
			FUNC0("failed to turnoff the panel\n");
		FUNC4(dp->plat_data->panel);
	}

	FUNC3(&dp->aux);
	FUNC6(dp->dev);
	FUNC2(dp->clock);
}