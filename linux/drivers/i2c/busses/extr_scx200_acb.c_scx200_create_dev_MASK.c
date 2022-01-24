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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct scx200_acb_iface {unsigned long base; TYPE_1__ adapter; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scx200_acb_iface*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct scx200_acb_iface*) ; 
 struct scx200_acb_iface* FUNC5 (char const*,struct device*,int) ; 

__attribute__((used)) static struct scx200_acb_iface *FUNC6(const char *text,
		unsigned long base, int index, struct device *dev)
{
	struct scx200_acb_iface *iface;
	int rc;

	iface = FUNC5(text, dev, index);

	if (iface == NULL)
		return NULL;

	if (!FUNC3(base, 8, iface->adapter.name)) {
		FUNC1("can't allocate io 0x%lx-0x%lx\n", base, base + 8 - 1);
		goto errout_free;
	}

	iface->base = base;
	rc = FUNC4(iface);

	if (rc == 0)
		return iface;

	FUNC2(base, 8);
 errout_free:
	FUNC0(iface);
	return NULL;
}