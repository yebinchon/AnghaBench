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
struct mbox_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mbox_chan*) ; 
 int FUNC1 (struct mbox_chan*) ; 

__attribute__((used)) static int FUNC2(struct mbox_chan *chan)
{
	int ret;

	ret = FUNC1(chan);
	if (ret)
		return ret;

	ret = FUNC0(chan);
	if (ret)
		return ret;

	return 0;
}