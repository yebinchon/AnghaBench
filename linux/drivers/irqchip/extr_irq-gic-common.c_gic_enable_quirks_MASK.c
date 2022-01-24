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
typedef  int u32 ;
struct gic_quirk {int iidr; int mask; scalar_t__ desc; scalar_t__ (* init ) (void*) ;scalar_t__ compatible; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (void*) ; 

void FUNC2(u32 iidr, const struct gic_quirk *quirks,
		void *data)
{
	for (; quirks->desc; quirks++) {
		if (quirks->compatible)
			continue;
		if (quirks->iidr != (quirks->mask & iidr))
			continue;
		if (quirks->init(data))
			FUNC0("GIC: enabling workaround for %s\n",
				quirks->desc);
	}
}