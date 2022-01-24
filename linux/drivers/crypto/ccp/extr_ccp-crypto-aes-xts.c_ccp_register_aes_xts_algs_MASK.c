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
struct list_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * aes_xts_algs ; 
 int FUNC1 (struct list_head*,int /*<<< orphan*/ *) ; 

int FUNC2(struct list_head *head)
{
	int i, ret;

	for (i = 0; i < FUNC0(aes_xts_algs); i++) {
		ret = FUNC1(head, &aes_xts_algs[i]);
		if (ret)
			return ret;
	}

	return 0;
}