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
struct ipu_pre {int in_use; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ IPU_PRE_CTRL ; 
 int /*<<< orphan*/  IPU_PRE_CTRL_SFTRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1(struct ipu_pre *pre)
{
	FUNC0(IPU_PRE_CTRL_SFTRST, pre->regs + IPU_PRE_CTRL);

	pre->in_use = false;
}