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
struct hfi1_devdata {int /*<<< orphan*/  boardname; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfi1_devdata*,char*,unsigned long*,void**) ; 

__attribute__((used)) static int FUNC3(struct hfi1_devdata *dd)
{
	/* generic board description */
	const char generic[] =
		"Intel Omni-Path Host Fabric Interface Adapter 100 Series";
	unsigned long size;
	int ret;

	ret = FUNC2(dd, "description", &size,
				(void **)&dd->boardname);
	if (ret) {
		FUNC0(dd, "Board description not found\n");
		/* use generic description */
		dd->boardname = FUNC1(generic, GFP_KERNEL);
		if (!dd->boardname)
			return -ENOMEM;
	}
	return 0;
}