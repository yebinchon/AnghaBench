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
struct hfi1_devdata {scalar_t__ base_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCE_DC_CTRL ; 
 int /*<<< orphan*/  DC_DC8051_CFG_LOCAL_GUID ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,unsigned long long) ; 
 scalar_t__ FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct hfi1_devdata *dd)
{
	/* Take the DC out of reset to get a valid GUID value */
	FUNC2(dd, CCE_DC_CTRL, 0);
	(void)FUNC1(dd, CCE_DC_CTRL);

	dd->base_guid = FUNC1(dd, DC_DC8051_CFG_LOCAL_GUID);
	FUNC0(dd, "GUID %llx",
		    (unsigned long long)dd->base_guid);
}