#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_fdma_dev {int nr_channels; struct st_fdma_chan* chans; } ;
struct TYPE_3__ {int /*<<< orphan*/  device_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  task; TYPE_1__ chan; } ;
struct st_fdma_chan {TYPE_2__ vchan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct st_fdma_dev *fdev)
{
	struct st_fdma_chan *fchan;
	int i;

	for (i = 0; i < fdev->nr_channels; i++) {
		fchan = &fdev->chans[i];
		FUNC0(&fchan->vchan.chan.device_node);
		FUNC1(&fchan->vchan.task);
	}
}