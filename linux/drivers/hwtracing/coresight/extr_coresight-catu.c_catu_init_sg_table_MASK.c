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
struct tmc_sg_table {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int CATU_PAGES_PER_SYSPAGE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tmc_sg_table*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  SZ_1M ; 
 int /*<<< orphan*/  FUNC2 (struct tmc_sg_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct tmc_sg_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,struct tmc_sg_table*,unsigned long,int) ; 
 struct tmc_sg_table* FUNC5 (struct device*,int,int,int,void**) ; 

__attribute__((used)) static struct tmc_sg_table *
FUNC6(struct device *catu_dev, int node,
		   ssize_t size, void **pages)
{
	int nr_tpages;
	struct tmc_sg_table *catu_table;

	/*
	 * Each table can address upto 1MB and we can have
	 * CATU_PAGES_PER_SYSPAGE tables in a system page.
	 */
	nr_tpages = FUNC0(size, SZ_1M) / CATU_PAGES_PER_SYSPAGE;
	catu_table = FUNC5(catu_dev, node, nr_tpages,
					size >> PAGE_SHIFT, pages);
	if (FUNC1(catu_table))
		return catu_table;

	FUNC3(catu_table);
	FUNC4(catu_dev,
		"Setup table %p, size %ldKB, %d table pages\n",
		catu_table, (unsigned long)size >> 10,  nr_tpages);
	FUNC2(catu_table);
	return catu_table;
}