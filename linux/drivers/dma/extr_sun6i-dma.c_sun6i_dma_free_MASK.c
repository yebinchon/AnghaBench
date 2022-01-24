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
struct TYPE_3__ {int /*<<< orphan*/  device_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  task; TYPE_1__ chan; } ;
struct sun6i_vchan {TYPE_2__ vc; } ;
struct sun6i_dma_dev {int num_vchans; struct sun6i_vchan* vchans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct sun6i_dma_dev *sdev)
{
	int i;

	for (i = 0; i < sdev->num_vchans; i++) {
		struct sun6i_vchan *vchan = &sdev->vchans[i];

		FUNC0(&vchan->vc.chan.device_node);
		FUNC1(&vchan->vc.task);
	}
}