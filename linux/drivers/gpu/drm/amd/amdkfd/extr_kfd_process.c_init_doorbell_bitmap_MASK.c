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
struct qcm_process_device {int /*<<< orphan*/  doorbell_bitmap; } ;
struct TYPE_3__ {unsigned int non_cp_doorbells_start; unsigned int non_cp_doorbells_end; } ;
struct kfd_dev {TYPE_1__ shared_resources; TYPE_2__* device_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  asic_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int KFD_MAX_NUM_OF_QUEUES_PER_PROCESS ; 
 unsigned int KFD_QUEUE_DOORBELL_MIRROR_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qcm_process_device *qpd,
			struct kfd_dev *dev)
{
	unsigned int i;

	if (!FUNC1(dev->device_info->asic_family))
		return 0;

	qpd->doorbell_bitmap =
		FUNC2(FUNC0(KFD_MAX_NUM_OF_QUEUES_PER_PROCESS,
				     BITS_PER_BYTE), GFP_KERNEL);
	if (!qpd->doorbell_bitmap)
		return -ENOMEM;

	/* Mask out doorbells reserved for SDMA, IH, and VCN on SOC15. */
	for (i = 0; i < KFD_MAX_NUM_OF_QUEUES_PER_PROCESS / 2; i++) {
		if (i >= dev->shared_resources.non_cp_doorbells_start
			&& i <= dev->shared_resources.non_cp_doorbells_end) {
			FUNC4(i, qpd->doorbell_bitmap);
			FUNC4(i + KFD_QUEUE_DOORBELL_MIRROR_OFFSET,
				qpd->doorbell_bitmap);
			FUNC3("reserved doorbell 0x%03x and 0x%03x\n", i,
				i + KFD_QUEUE_DOORBELL_MIRROR_OFFSET);
		}
	}

	return 0;
}