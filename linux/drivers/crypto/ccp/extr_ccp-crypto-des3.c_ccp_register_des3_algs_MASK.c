#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_4__ {unsigned int version; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct list_head*,TYPE_1__*) ; 
 unsigned int FUNC2 () ; 
 TYPE_1__* des3_algs ; 

int FUNC3(struct list_head *head)
{
	int i, ret;
	unsigned int ccpversion = FUNC2();

	for (i = 0; i < FUNC0(des3_algs); i++) {
		if (des3_algs[i].version > ccpversion)
			continue;
		ret = FUNC1(head, &des3_algs[i]);
		if (ret)
			return ret;
	}

	return 0;
}