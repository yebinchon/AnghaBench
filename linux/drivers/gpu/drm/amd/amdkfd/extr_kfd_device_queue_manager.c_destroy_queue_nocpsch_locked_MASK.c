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
struct TYPE_4__ {scalar_t__ type; scalar_t__ is_active; } ;
struct queue {TYPE_2__ properties; int /*<<< orphan*/  list; int /*<<< orphan*/  mqd_mem_obj; int /*<<< orphan*/  mqd; int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; } ;
struct qcm_process_device {int reset_wavefronts; int /*<<< orphan*/  queue_count; TYPE_1__* pqm; int /*<<< orphan*/  queues_list; } ;
struct mqd_manager {int (* destroy_mqd ) (struct mqd_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* free_mqd ) (struct mqd_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct device_queue_manager {int /*<<< orphan*/  queue_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  total_queue_count; int /*<<< orphan*/  xgmi_sdma_queue_count; int /*<<< orphan*/  sdma_queue_count; struct mqd_manager** mqd_mgrs; } ;
struct TYPE_3__ {int /*<<< orphan*/  process; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIME ; 
 int /*<<< orphan*/  KFD_PREEMPT_TYPE_WAVEFRONT_RESET ; 
 scalar_t__ KFD_QUEUE_TYPE_COMPUTE ; 
 scalar_t__ KFD_QUEUE_TYPE_SDMA ; 
 scalar_t__ KFD_QUEUE_TYPE_SDMA_XGMI ; 
 int /*<<< orphan*/  KFD_UNMAP_LATENCY_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qcm_process_device*,struct queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_queue_manager*,struct queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_queue_manager*,struct queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_queue_manager*,struct qcm_process_device*,struct queue*) ; 
 size_t FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mqd_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mqd_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct device_queue_manager *dqm,
				struct qcm_process_device *qpd,
				struct queue *q)
{
	int retval;
	struct mqd_manager *mqd_mgr;

	mqd_mgr = dqm->mqd_mgrs[FUNC5(
			q->properties.type)];

	if (q->properties.type == KFD_QUEUE_TYPE_COMPUTE) {
		FUNC2(dqm, q);
	} else if (q->properties.type == KFD_QUEUE_TYPE_SDMA) {
		dqm->sdma_queue_count--;
		FUNC3(dqm, q);
	} else if (q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI) {
		dqm->xgmi_sdma_queue_count--;
		FUNC3(dqm, q);
	} else {
		FUNC8("q->properties.type %d is invalid\n",
				q->properties.type);
		return -EINVAL;
	}
	dqm->total_queue_count--;

	FUNC1(qpd, q);

	retval = mqd_mgr->destroy_mqd(mqd_mgr, q->mqd,
				KFD_PREEMPT_TYPE_WAVEFRONT_RESET,
				KFD_UNMAP_LATENCY_MS,
				q->pipe, q->queue);
	if (retval == -ETIME)
		qpd->reset_wavefronts = true;

	mqd_mgr->free_mqd(mqd_mgr, q->mqd, q->mqd_mem_obj);

	FUNC6(&q->list);
	if (FUNC7(&qpd->queues_list)) {
		if (qpd->reset_wavefronts) {
			FUNC9("Resetting wave fronts (nocpsch) on dev %p\n",
					dqm->dev);
			/* dbgdev_wave_reset_wavefronts has to be called before
			 * deallocate_vmid(), i.e. when vmid is still in use.
			 */
			FUNC0(dqm->dev,
					qpd->pqm->process);
			qpd->reset_wavefronts = false;
		}

		FUNC4(dqm, qpd, q);
	}
	qpd->queue_count--;
	if (q->properties.is_active)
		dqm->queue_count--;

	return retval;
}