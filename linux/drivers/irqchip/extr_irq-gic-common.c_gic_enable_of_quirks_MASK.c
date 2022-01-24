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
struct gic_quirk {scalar_t__ desc; scalar_t__ (* init ) (void*) ;int /*<<< orphan*/  compatible; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (void*) ; 

void FUNC3(const struct device_node *np,
			  const struct gic_quirk *quirks, void *data)
{
	for (; quirks->desc; quirks++) {
		if (!FUNC0(np, quirks->compatible))
			continue;
		if (quirks->init(data))
			FUNC1("GIC: enabling workaround for %s\n",
				quirks->desc);
	}
}