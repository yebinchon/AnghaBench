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
struct msc {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ MSC_MODE_MULTI ; 
 scalar_t__ MSC_MODE_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct msc*) ; 
 int /*<<< orphan*/  FUNC1 (struct msc*) ; 

__attribute__((used)) static void FUNC2(struct msc *msc)
{
	if (msc->mode == MSC_MODE_SINGLE)
		FUNC0(msc);
	else if (msc->mode == MSC_MODE_MULTI)
		FUNC1(msc);
}