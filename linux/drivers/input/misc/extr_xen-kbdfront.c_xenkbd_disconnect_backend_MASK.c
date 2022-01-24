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
struct xenkbd_info {int irq; int gref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,struct xenkbd_info*) ; 

__attribute__((used)) static void FUNC2(struct xenkbd_info *info)
{
	if (info->irq >= 0)
		FUNC1(info->irq, info);
	info->irq = -1;
	if (info->gref >= 0)
		FUNC0(info->gref, 0, 0UL);
	info->gref = -1;
}