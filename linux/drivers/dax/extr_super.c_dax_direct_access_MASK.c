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
struct dax_device {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  pfn_t ;
struct TYPE_2__ {long (* direct_access ) (struct dax_device*,int /*<<< orphan*/ ,long,void**,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 long ENXIO ; 
 long EOPNOTSUPP ; 
 long ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct dax_device*) ; 
 long FUNC1 (long,long) ; 
 long FUNC2 (struct dax_device*,int /*<<< orphan*/ ,long,void**,int /*<<< orphan*/ *) ; 

long FUNC3(struct dax_device *dax_dev, pgoff_t pgoff, long nr_pages,
		void **kaddr, pfn_t *pfn)
{
	long avail;

	if (!dax_dev)
		return -EOPNOTSUPP;

	if (!FUNC0(dax_dev))
		return -ENXIO;

	if (nr_pages < 0)
		return nr_pages;

	avail = dax_dev->ops->direct_access(dax_dev, pgoff, nr_pages,
			kaddr, pfn);
	if (!avail)
		return -ERANGE;
	return FUNC1(avail, nr_pages);
}