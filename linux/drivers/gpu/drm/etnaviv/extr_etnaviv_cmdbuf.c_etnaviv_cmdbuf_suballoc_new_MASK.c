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
struct etnaviv_cmdbuf_suballoc {int /*<<< orphan*/  vaddr; int /*<<< orphan*/  paddr; int /*<<< orphan*/  free_event; int /*<<< orphan*/  lock; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct etnaviv_cmdbuf_suballoc* FUNC1 (int) ; 
 scalar_t__ ETNAVIV_SOFTPIN_START_ADDRESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SUBALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct etnaviv_cmdbuf_suballoc*) ; 
 struct etnaviv_cmdbuf_suballoc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct etnaviv_cmdbuf_suballoc *
FUNC7(struct device *dev)
{
	struct etnaviv_cmdbuf_suballoc *suballoc;
	int ret;

	suballoc = FUNC5(sizeof(*suballoc), GFP_KERNEL);
	if (!suballoc)
		return FUNC1(-ENOMEM);

	suballoc->dev = dev;
	FUNC6(&suballoc->lock);
	FUNC3(&suballoc->free_event);

	FUNC0(ETNAVIV_SOFTPIN_START_ADDRESS < SUBALLOC_SIZE);
	suballoc->vaddr = FUNC2(dev, SUBALLOC_SIZE,
				       &suballoc->paddr, GFP_KERNEL);
	if (!suballoc->vaddr) {
		ret = -ENOMEM;
		goto free_suballoc;
	}

	return suballoc;

free_suballoc:
	FUNC4(suballoc);

	return FUNC1(ret);
}