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
struct replicator_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ REPLICATOR_IDFILTER0 ; 
 scalar_t__ REPLICATOR_IDFILTER1 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct replicator_drvdata *drvdata)
{
	FUNC1(drvdata->base);

	if (!FUNC2(drvdata->base)) {
		FUNC4(0xff, drvdata->base + REPLICATOR_IDFILTER0);
		FUNC4(0xff, drvdata->base + REPLICATOR_IDFILTER1);
		FUNC3(drvdata->base);
	}

	FUNC0(drvdata->base);
}