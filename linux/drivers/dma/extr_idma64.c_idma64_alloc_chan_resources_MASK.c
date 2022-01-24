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
struct idma64_lli {int dummy; } ;
struct idma64_chan {int /*<<< orphan*/  pool; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct idma64_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *chan)
{
	struct idma64_chan *idma64c = FUNC4(chan);

	/* Create a pool of consistent memory blocks for hardware descriptors */
	idma64c->pool = FUNC3(FUNC2(FUNC0(chan)),
					chan->device->dev,
					sizeof(struct idma64_lli), 8, 0);
	if (!idma64c->pool) {
		FUNC1(FUNC0(chan), "No memory for descriptors\n");
		return -ENOMEM;
	}

	return 0;
}