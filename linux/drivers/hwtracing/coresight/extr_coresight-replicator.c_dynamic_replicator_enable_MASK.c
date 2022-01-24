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
 int EINVAL ; 
 scalar_t__ REPLICATOR_IDFILTER0 ; 
 scalar_t__ REPLICATOR_IDFILTER1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct replicator_drvdata *drvdata,
				     int inport, int outport)
{
	int rc = 0;
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
		return -EINVAL;
	}

	FUNC1(drvdata->base);

	if ((FUNC4(drvdata->base + REPLICATOR_IDFILTER0) == 0xff) &&
	    (FUNC4(drvdata->base + REPLICATOR_IDFILTER1) == 0xff))
		rc = FUNC3(drvdata->base);

	/* Ensure that the outport is enabled. */
	if (!rc)
		FUNC5(0x00, drvdata->base + reg);
	FUNC0(drvdata->base);

	return rc;
}