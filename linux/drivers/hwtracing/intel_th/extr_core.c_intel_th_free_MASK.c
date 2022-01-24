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
struct intel_th {int num_thdevs; int /*<<< orphan*/  id; int /*<<< orphan*/  major; int /*<<< orphan*/  dev; int /*<<< orphan*/ ** thdev; int /*<<< orphan*/ * hub; } ;

/* Variables and functions */
 int /*<<< orphan*/  TH_POSSIBLE_OUTPUTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_th_ida ; 
 int /*<<< orphan*/  FUNC3 (struct intel_th*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_th*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct intel_th *th)
{
	int i;

	FUNC3(th);

	FUNC2(th->hub);
	for (i = 0; i < th->num_thdevs; i++) {
		if (th->thdev[i] != th->hub)
			FUNC2(th->thdev[i]);
		th->thdev[i] = NULL;
	}

	th->num_thdevs = 0;

	FUNC6(th->dev);
	FUNC5(th->dev);

	FUNC0(th->major, 0, TH_POSSIBLE_OUTPUTS,
			    "intel_th/output");

	FUNC1(&intel_th_ida, th->id);

	FUNC4(th);
}