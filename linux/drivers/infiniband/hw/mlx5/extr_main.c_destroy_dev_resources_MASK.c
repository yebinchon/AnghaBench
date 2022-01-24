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
struct mlx5_ib_resources {TYPE_1__* ports; int /*<<< orphan*/  p0; int /*<<< orphan*/  c0; int /*<<< orphan*/  x1; int /*<<< orphan*/  x0; int /*<<< orphan*/  s0; int /*<<< orphan*/  s1; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkey_change_work; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mlx5_ib_resources *devr)
{
	int port;

	FUNC6(devr->s1, NULL);
	FUNC2(devr->s1);
	FUNC6(devr->s0, NULL);
	FUNC2(devr->s0);
	FUNC4(devr->x0, NULL);
	FUNC4(devr->x1, NULL);
	FUNC5(devr->c0, NULL);
	FUNC2(devr->c0);
	FUNC3(devr->p0, NULL);
	FUNC2(devr->p0);

	/* Make sure no change P_Key work items are still executing */
	for (port = 0; port < FUNC0(devr->ports); ++port)
		FUNC1(&devr->ports[port].pkey_change_work);
}