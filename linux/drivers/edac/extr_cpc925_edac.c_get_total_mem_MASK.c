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
struct device_node {int dummy; } ;
struct cpc925_mc_pdata {unsigned long total_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,...) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int*) ; 
 int FUNC3 (struct device_node*) ; 
 int FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 unsigned long FUNC6 (unsigned int const*,int) ; 

__attribute__((used)) static void FUNC7(struct cpc925_mc_pdata *pdata)
{
	struct device_node *np = NULL;
	const unsigned int *reg, *reg_end;
	int len, sw, aw;
	unsigned long start, size;

	np = FUNC1(NULL, "memory");
	if (!np)
		return;

	aw = FUNC3(np);
	sw = FUNC4(np);
	reg = (const unsigned int *)FUNC2(np, "reg", &len);
	reg_end = reg + len/4;

	pdata->total_mem = 0;
	do {
		start = FUNC6(reg, aw);
		reg += aw;
		size = FUNC6(reg, sw);
		reg += sw;
		FUNC0(1, "start 0x%lx, size 0x%lx\n", start, size);
		pdata->total_mem += size;
	} while (reg < reg_end);

	FUNC5(np);
	FUNC0(0, "total_mem 0x%lx\n", pdata->total_mem);
}