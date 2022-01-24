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
struct st_fdma_chan {TYPE_1__* fdev; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct st_fdma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static inline struct st_fdma_chan *FUNC3(struct dma_chan *chan,
		size_t len, enum dma_transfer_direction direction)
{
	struct st_fdma_chan *fchan;

	if (!chan || !len)
		return NULL;

	fchan = FUNC2(chan);

	if (!FUNC1(direction)) {
		FUNC0(fchan->fdev->dev, "bad direction?\n");
		return NULL;
	}

	return fchan;
}