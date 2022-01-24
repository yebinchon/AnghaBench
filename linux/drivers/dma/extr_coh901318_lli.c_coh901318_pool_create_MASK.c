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
struct device {int dummy; } ;
struct coh901318_pool {int /*<<< orphan*/  dmapool; struct device* dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coh901318_pool*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct device*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct coh901318_pool *pool,
			  struct device *dev,
			  size_t size, size_t align)
{
	FUNC2(&pool->lock);
	pool->dev = dev;
	pool->dmapool = FUNC1("lli_pool", dev, size, align, 0);

	FUNC0(pool);
	return 0;
}