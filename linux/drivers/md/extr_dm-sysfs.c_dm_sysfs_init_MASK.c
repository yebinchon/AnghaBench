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
struct mapped_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  dm_ktype ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 

int FUNC4(struct mapped_device *md)
{
	return FUNC3(FUNC2(md), &dm_ktype,
				    &FUNC0(FUNC1(md))->kobj,
				    "%s", "dm");
}