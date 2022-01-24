#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
union PM4_MES_TYPE_3_HEADER {int type; unsigned int queue_size; int is_interop; int priority; int queue_percent; int /*<<< orphan*/  doorbell_ptr; int /*<<< orphan*/ * cu_mask; int /*<<< orphan*/  eop_ring_buffer_size; int /*<<< orphan*/  eop_ring_buffer_address; int /*<<< orphan*/ * write_ptr; int /*<<< orphan*/ * read_ptr; scalar_t__ queue_address; scalar_t__ vmid; int /*<<< orphan*/  doorbell_off; int /*<<< orphan*/  u32all; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct queue_properties {int type; unsigned int queue_size; int is_interop; int priority; int queue_percent; int /*<<< orphan*/  doorbell_ptr; int /*<<< orphan*/ * cu_mask; int /*<<< orphan*/  eop_ring_buffer_size; int /*<<< orphan*/  eop_ring_buffer_address; int /*<<< orphan*/ * write_ptr; int /*<<< orphan*/ * read_ptr; scalar_t__ queue_address; scalar_t__ vmid; int /*<<< orphan*/  doorbell_off; int /*<<< orphan*/  u32all; int /*<<< orphan*/  opcode; } ;
struct kfd_dev {TYPE_3__* device_info; TYPE_1__* dqm; } ;
struct TYPE_13__ {int (* initialize ) (struct kernel_queue*,struct kfd_dev*,int,unsigned int) ;} ;
struct kernel_queue {TYPE_9__* pq; TYPE_9__* eop_mem; TYPE_9__* rptr_mem; TYPE_9__* wptr_mem; TYPE_4__* queue; TYPE_5__* mqd_mgr; TYPE_9__* fence_mem_obj; scalar_t__ fence_gpu_addr; union PM4_MES_TYPE_3_HEADER* fence_kernel_address; int /*<<< orphan*/  eop_gpu_addr; scalar_t__ wptr_gpu_addr; scalar_t__ rptr_gpu_addr; scalar_t__ pq_gpu_addr; union PM4_MES_TYPE_3_HEADER* wptr_kernel; union PM4_MES_TYPE_3_HEADER* rptr_kernel; union PM4_MES_TYPE_3_HEADER* pq_kernel_addr; TYPE_2__ ops_asic_specific; int /*<<< orphan*/  nop_packet; struct kfd_dev* dev; } ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  nop ;
typedef  enum kfd_queue_type { ____Placeholder_kfd_queue_type } kfd_queue_type ;
struct TYPE_17__ {scalar_t__ gpu_addr; union PM4_MES_TYPE_3_HEADER* cpu_ptr; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* free_mqd ) (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* load_mqd ) (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* init_mqd ) (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  (* allocate_mqd ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  mqd_mem_obj; int /*<<< orphan*/  mqd; int /*<<< orphan*/  properties; int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  gart_mqd_addr; int /*<<< orphan*/  process; struct kfd_dev* device; } ;
struct TYPE_14__ {int doorbell_size; } ;
struct TYPE_12__ {TYPE_5__** mqd_mgrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IT_NOP ; 
 int /*<<< orphan*/  KFD_CIK_HIQ_PIPE ; 
 int /*<<< orphan*/  KFD_CIK_HIQ_QUEUE ; 
 size_t KFD_MQD_TYPE_DIQ ; 
 size_t KFD_MQD_TYPE_HIQ ; 
#define  KFD_QUEUE_TYPE_DIQ 129 
#define  KFD_QUEUE_TYPE_HIQ 128 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PM4_COUNT_ZERO ; 
 int PM4_TYPE_3 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (TYPE_4__**,union PM4_MES_TYPE_3_HEADER*) ; 
 int /*<<< orphan*/  FUNC2 (struct kfd_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kfd_dev*,int,TYPE_9__**) ; 
 int /*<<< orphan*/  FUNC5 (struct kfd_dev*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (struct kfd_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union PM4_MES_TYPE_3_HEADER*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int FUNC11 (struct kernel_queue*,struct kfd_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 

__attribute__((used)) static bool FUNC17(struct kernel_queue *kq, struct kfd_dev *dev,
		enum kfd_queue_type type, unsigned int queue_size)
{
	struct queue_properties prop;
	int retval;
	union PM4_MES_TYPE_3_HEADER nop;

	if (FUNC0(type != KFD_QUEUE_TYPE_DIQ && type != KFD_QUEUE_TYPE_HIQ))
		return false;

	FUNC8("Initializing queue type %d size %d\n", KFD_QUEUE_TYPE_HIQ,
			queue_size);

	FUNC7(&prop, 0, sizeof(prop));
	FUNC7(&nop, 0, sizeof(nop));

	nop.opcode = IT_NOP;
	nop.type = PM4_TYPE_3;
	nop.u32all |= PM4_COUNT_ZERO;

	kq->dev = dev;
	kq->nop_packet = nop.u32all;
	switch (type) {
	case KFD_QUEUE_TYPE_DIQ:
		kq->mqd_mgr = dev->dqm->mqd_mgrs[KFD_MQD_TYPE_DIQ];
		break;
	case KFD_QUEUE_TYPE_HIQ:
		kq->mqd_mgr = dev->dqm->mqd_mgrs[KFD_MQD_TYPE_HIQ];
		break;
	default:
		FUNC9("Invalid queue type %d\n", type);
		return false;
	}

	if (!kq->mqd_mgr)
		return false;

	prop.doorbell_ptr = FUNC2(dev, &prop.doorbell_off);

	if (!prop.doorbell_ptr) {
		FUNC9("Failed to initialize doorbell");
		goto err_get_kernel_doorbell;
	}

	retval = FUNC4(dev, queue_size, &kq->pq);
	if (retval != 0) {
		FUNC9("Failed to init pq queues size %d\n", queue_size);
		goto err_pq_allocate_vidmem;
	}

	kq->pq_kernel_addr = kq->pq->cpu_ptr;
	kq->pq_gpu_addr = kq->pq->gpu_addr;

	retval = kq->ops_asic_specific.initialize(kq, dev, type, queue_size);
	if (!retval)
		goto err_eop_allocate_vidmem;

	retval = FUNC4(dev, sizeof(*kq->rptr_kernel),
					&kq->rptr_mem);

	if (retval != 0)
		goto err_rptr_allocate_vidmem;

	kq->rptr_kernel = kq->rptr_mem->cpu_ptr;
	kq->rptr_gpu_addr = kq->rptr_mem->gpu_addr;

	retval = FUNC4(dev, dev->device_info->doorbell_size,
					&kq->wptr_mem);

	if (retval != 0)
		goto err_wptr_allocate_vidmem;

	kq->wptr_kernel = kq->wptr_mem->cpu_ptr;
	kq->wptr_gpu_addr = kq->wptr_mem->gpu_addr;

	FUNC7(kq->pq_kernel_addr, 0, queue_size);
	FUNC7(kq->rptr_kernel, 0, sizeof(*kq->rptr_kernel));
	FUNC7(kq->wptr_kernel, 0, sizeof(*kq->wptr_kernel));

	prop.queue_size = queue_size;
	prop.is_interop = false;
	prop.priority = 1;
	prop.queue_percent = 100;
	prop.type = type;
	prop.vmid = 0;
	prop.queue_address = kq->pq_gpu_addr;
	prop.read_ptr = (uint32_t *) kq->rptr_gpu_addr;
	prop.write_ptr = (uint32_t *) kq->wptr_gpu_addr;
	prop.eop_ring_buffer_address = kq->eop_gpu_addr;
	prop.eop_ring_buffer_size = PAGE_SIZE;
	prop.cu_mask = NULL;

	if (FUNC1(&kq->queue, &prop) != 0)
		goto err_init_queue;

	kq->queue->device = dev;
	kq->queue->process = FUNC3(current);

	kq->queue->mqd_mem_obj = kq->mqd_mgr->allocate_mqd(kq->mqd_mgr->dev,
					&kq->queue->properties);
	if (!kq->queue->mqd_mem_obj)
		goto err_allocate_mqd;
	kq->mqd_mgr->init_mqd(kq->mqd_mgr, &kq->queue->mqd,
					kq->queue->mqd_mem_obj,
					&kq->queue->gart_mqd_addr,
					&kq->queue->properties);
	/* assign HIQ to HQD */
	if (type == KFD_QUEUE_TYPE_HIQ) {
		FUNC8("Assigning hiq to hqd\n");
		kq->queue->pipe = KFD_CIK_HIQ_PIPE;
		kq->queue->queue = KFD_CIK_HIQ_QUEUE;
		kq->mqd_mgr->load_mqd(kq->mqd_mgr, kq->queue->mqd,
				kq->queue->pipe, kq->queue->queue,
				&kq->queue->properties, NULL);
	} else {
		/* allocate fence for DIQ */

		retval = FUNC4(dev, sizeof(uint32_t),
						&kq->fence_mem_obj);

		if (retval != 0)
			goto err_alloc_fence;

		kq->fence_kernel_address = kq->fence_mem_obj->cpu_ptr;
		kq->fence_gpu_addr = kq->fence_mem_obj->gpu_addr;
	}

	FUNC10(kq->queue);

	return true;
err_alloc_fence:
	kq->mqd_mgr->free_mqd(kq->mqd_mgr, kq->queue->mqd, kq->queue->mqd_mem_obj);
err_allocate_mqd:
	FUNC16(kq->queue);
err_init_queue:
	FUNC5(dev, kq->wptr_mem);
err_wptr_allocate_vidmem:
	FUNC5(dev, kq->rptr_mem);
err_rptr_allocate_vidmem:
	FUNC5(dev, kq->eop_mem);
err_eop_allocate_vidmem:
	FUNC5(dev, kq->pq);
err_pq_allocate_vidmem:
	FUNC6(dev, prop.doorbell_ptr);
err_get_kernel_doorbell:
	return false;

}