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
typedef  int /*<<< orphan*/  sysmmu_iova_t ;
struct sysmmu_drvdata {scalar_t__ version; int /*<<< orphan*/  lock; int /*<<< orphan*/  clk_master; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysmmu_drvdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct sysmmu_drvdata*) ; 

__attribute__((used)) static void FUNC9(struct sysmmu_drvdata *data,
					    sysmmu_iova_t iova)
{
	unsigned long flags;

	FUNC5(&data->lock, flags);
	if (data->active && data->version >= FUNC0(3, 3)) {
		FUNC4(data->clk_master);
		if (FUNC7(data)) {
			if (data->version >= FUNC0(5, 0))
				FUNC1(data);
			else
				FUNC2(data, iova, 1);
			FUNC8(data);
		}
		FUNC3(data->clk_master);
	}
	FUNC6(&data->lock, flags);
}