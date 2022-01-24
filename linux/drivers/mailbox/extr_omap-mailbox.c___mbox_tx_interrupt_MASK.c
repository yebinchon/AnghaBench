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
struct omap_mbox {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TX ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct omap_mbox *mbox)
{
	FUNC0(mbox, IRQ_TX);
	FUNC1(mbox, IRQ_TX);
	FUNC2(mbox->chan, 0);
}