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
typedef  unsigned int u32 ;
struct etm_drvdata {unsigned int base; TYPE_1__* csdev; scalar_t__ use_cp14; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int*) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct etm_drvdata *drvdata, u32 off)
{
	u32 val;

	if (drvdata->use_cp14) {
		if (FUNC1(off, &val)) {
			FUNC0(&drvdata->csdev->dev,
				"invalid CP14 access to ETM reg: %#x", off);
		}
	} else {
		val = FUNC2(drvdata->base + off);
	}

	return val;
}