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
typedef  scalar_t__ u32 ;
struct replicator_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ REPLICATOR_IDFILTER0 ; 
 scalar_t__ REPLICATOR_IDFILTER1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct replicator_drvdata *drvdata,
				       int inport, int outport)
{
	u32 reg;

	switch (outport) {
	case 0:
		reg = REPLICATOR_IDFILTER0;
		break;
	case 1:
		reg = REPLICATOR_IDFILTER1;
		break;
	default:
		FUNC2(1);
		return;
	}

	FUNC1(drvdata->base);

	/* disable the flow of ATB data through port */
	FUNC5(0xff, drvdata->base + reg);

	if ((FUNC4(drvdata->base + REPLICATOR_IDFILTER0) == 0xff) &&
	    (FUNC4(drvdata->base + REPLICATOR_IDFILTER1) == 0xff))
		FUNC3(drvdata->base);
	FUNC0(drvdata->base);
}