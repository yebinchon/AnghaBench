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
struct altera_mbox {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct altera_mbox*) ; 
 struct altera_mbox* FUNC1 (struct mbox_chan*) ; 

__attribute__((used)) static bool FUNC2(struct mbox_chan *chan)
{
	struct altera_mbox *mbox = FUNC1(chan);

	/* Return false if mailbox is full */
	return FUNC0(mbox) ? false : true;
}