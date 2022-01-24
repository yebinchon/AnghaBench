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
struct sp_device {TYPE_1__* dev_vdata; } ;
struct TYPE_2__ {scalar_t__ psp_vdata; scalar_t__ ccp_vdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sp_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sp_device*) ; 

void FUNC3(struct sp_device *sp)
{
	if (sp->dev_vdata->ccp_vdata)
		FUNC0(sp);

	if (sp->dev_vdata->psp_vdata)
		FUNC1(sp);

	FUNC2(sp);
}