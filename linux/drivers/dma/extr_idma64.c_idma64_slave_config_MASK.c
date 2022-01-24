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
struct TYPE_2__ {int /*<<< orphan*/  dst_maxburst; int /*<<< orphan*/  src_maxburst; } ;
struct idma64_chan {TYPE_1__ config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct dma_slave_config*,int) ; 
 struct idma64_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *chan,
		struct dma_slave_config *config)
{
	struct idma64_chan *idma64c = FUNC2(chan);

	FUNC1(&idma64c->config, config, sizeof(idma64c->config));

	FUNC0(&idma64c->config.src_maxburst);
	FUNC0(&idma64c->config.dst_maxburst);

	return 0;
}