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
struct resource {int flags; int end; int start; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC2(struct device_node *np, struct resource *res,
				 int index)
{
	/* Only quirks for memory resources for now */
	if ((res->flags & IORESOURCE_MEM) == 0)
		return 0;

	/* Grand Central has too large resource 0 on some machines */
	if (index == 0 && FUNC1(np, "gc"))
		res->end = res->start + 0x1ffff;

	/* Airport has bogus resource 2 */
	if (index >= 2 && FUNC1(np, "radio"))
		return 1;

#ifndef CONFIG_PPC64
	/* DBDMAs may have bogus sizes */
	if ((res->start & 0x0001f000) == 0x00008000)
		res->end = res->start + 0xff;
#endif /* CONFIG_PPC64 */

	/* ESCC parent eats child resources. We could have added a
	 * level of hierarchy, but I don't really feel the need
	 * for it
	 */
	if (FUNC1(np, "escc"))
		return 1;

	/* ESCC has bogus resources >= 3 */
	if (index >= 3 && (FUNC1(np, "ch-a") ||
			   FUNC1(np, "ch-b")))
		return 1;

	/* Media bay has too many resources, keep only first one */
	if (index > 0 && FUNC1(np, "media-bay"))
		return 1;

	/* Some older IDE resources have bogus sizes */
	if (FUNC1(np, "IDE") || FUNC1(np, "ATA") ||
	    FUNC0(np, "ide") || FUNC0(np, "ata")) {
		if (index == 0 && (res->end - res->start) > 0xfff)
			res->end = res->start + 0xfff;
		if (index == 1 && (res->end - res->start) > 0xff)
			res->end = res->start + 0xff;
	}
	return 0;
}