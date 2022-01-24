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
struct sdma_channel {int /*<<< orphan*/  terminate_worker; scalar_t__ desc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 struct sdma_channel* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *chan)
{
	struct sdma_channel *sdmac = FUNC2(chan);

	FUNC1(chan);

	if (sdmac->desc)
		FUNC0(&sdmac->terminate_worker);

	return 0;
}