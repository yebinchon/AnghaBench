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
struct edd_device {int /*<<< orphan*/  kobj; } ;
struct edd_attribute {int /*<<< orphan*/  attr; scalar_t__ (* test ) (struct edd_device*) ;} ;

/* Variables and functions */
 struct edd_attribute** edd_attrs ; 
 int /*<<< orphan*/  FUNC0 (struct edd_device*) ; 
 scalar_t__ FUNC1 (struct edd_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct edd_device * edev)
{
	struct edd_attribute * attr;
	int error = 0;
	int i;

	for (i = 0; (attr = edd_attrs[i]) && !error; i++) {
		if (!attr->test ||
		    (attr->test && attr->test(edev)))
			error = FUNC2(&edev->kobj,&attr->attr);
	}

	if (!error) {
		FUNC0(edev);
	}
}