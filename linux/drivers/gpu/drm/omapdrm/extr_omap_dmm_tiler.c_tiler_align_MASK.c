#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
typedef  enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
struct TYPE_2__ {int /*<<< orphan*/  slot_h; int /*<<< orphan*/  slot_w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* geom ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(enum tiler_fmt fmt, u16 *w, u16 *h)
{
	FUNC0(!FUNC2(fmt));
	*w = FUNC1(*w, geom[fmt].slot_w);
	*h = FUNC1(*h, geom[fmt].slot_h);
}