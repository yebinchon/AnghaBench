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
typedef  int /*<<< orphan*/  u32 ;
struct dispc_device {int dummy; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dispc_device *dispc,
				      enum omap_channel channel, int *lck_div,
				      int *pck_div)
{
	u32 l;
	l = FUNC2(dispc, FUNC0(channel));
	*lck_div = FUNC1(l, 23, 16);
	*pck_div = FUNC1(l, 7, 0);
}