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
struct hfi1_devdata {int unit; int /*<<< orphan*/  kobj; int /*<<< orphan*/  user_device; int /*<<< orphan*/  user_cdev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 char* FUNC0 () ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hfi1_file_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*) ; 

__attribute__((used)) static int FUNC4(struct hfi1_devdata *dd)
{
	char name[10];
	int ret;

	FUNC2(name, sizeof(name), "%s_%d", FUNC0(), dd->unit);
	ret = FUNC1(dd->unit, name, &hfi1_file_ops,
			     &dd->user_cdev, &dd->user_device,
			     true, &dd->kobj);
	if (ret)
		FUNC3(dd);

	return ret;
}