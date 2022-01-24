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
struct bcm2835_mbox {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_MC_IHAVEDATAIRQEN ; 
 scalar_t__ MAIL0_CNF ; 
 struct bcm2835_mbox* FUNC0 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mbox_chan *link)
{
	struct bcm2835_mbox *mbox = FUNC0(link);

	/* Enable the interrupt on data reception */
	FUNC1(ARM_MC_IHAVEDATAIRQEN, mbox->regs + MAIL0_CNF);

	return 0;
}