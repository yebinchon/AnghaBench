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
struct st_fdma_chan {int /*<<< orphan*/  scfg; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dma_slave_config*,int) ; 
 struct st_fdma_chan* FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC2(struct dma_chan *chan,
				struct dma_slave_config *slave_cfg)
{
	struct st_fdma_chan *fchan = FUNC1(chan);

	FUNC0(&fchan->scfg, slave_cfg, sizeof(fchan->scfg));
	return 0;
}