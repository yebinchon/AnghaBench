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
struct mapped_device {int dummy; } ;
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 
 struct kobject* FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mapped_device *md)
{
	struct kobject *kobj = FUNC1(md);
	FUNC2(kobj);
	FUNC3(FUNC0(kobj));
}