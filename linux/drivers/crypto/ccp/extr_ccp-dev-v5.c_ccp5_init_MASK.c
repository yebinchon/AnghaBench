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
typedef  int u64 ;
typedef  int u32 ;
struct task_struct {int dummy; } ;
struct dma_pool {int dummy; } ;
struct device {int dummy; } ;
struct ccp_device {size_t cmd_q_count; size_t max_q_count; char* name; struct ccp_cmd_queue* cmd_q; int /*<<< orphan*/  sp; scalar_t__ io_regs; int /*<<< orphan*/  irq_tasklet; scalar_t__ use_tasklet; struct device* dev; } ;
struct ccp_cmd_queue {unsigned int id; int qcontrol; int lsb; struct dma_pool* dma_pool; struct task_struct* kthread; void* sb_ctx; void* sb_key; scalar_t__ reg_control; int /*<<< orphan*/  qdma_tail; scalar_t__ reg_head_lo; scalar_t__ reg_tail_lo; int /*<<< orphan*/  qbase_dma; scalar_t__ reg_interrupt_status; scalar_t__ reg_status; scalar_t__ reg_int_status; int /*<<< orphan*/  int_queue; scalar_t__ reg_dma_write_status; scalar_t__ reg_dma_read_status; scalar_t__ reg_dma_status; scalar_t__ reg_int_enable; scalar_t__ qidx; int /*<<< orphan*/  qbase; int /*<<< orphan*/  qsize; int /*<<< orphan*/  q_mutex; struct ccp_device* ccp; } ;
typedef  int /*<<< orphan*/  dma_pool_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CCP_DMAPOOL_ALIGN ; 
 int /*<<< orphan*/  CCP_DMAPOOL_MAX_SIZE ; 
 scalar_t__ CMD5_Q_DMA_READ_STATUS_BASE ; 
 scalar_t__ CMD5_Q_DMA_STATUS_BASE ; 
 scalar_t__ CMD5_Q_DMA_WRITE_STATUS_BASE ; 
 scalar_t__ CMD5_Q_HEAD_LO_BASE ; 
 scalar_t__ CMD5_Q_INTERRUPT_STATUS_BASE ; 
 scalar_t__ CMD5_Q_INT_ENABLE_BASE ; 
 scalar_t__ CMD5_Q_INT_STATUS_BASE ; 
 int CMD5_Q_SHIFT ; 
 int CMD5_Q_SIZE ; 
 scalar_t__ CMD5_Q_STATUS_BASE ; 
 unsigned int CMD5_Q_STATUS_INCR ; 
 scalar_t__ CMD5_Q_TAIL_LO_BASE ; 
 int COMMANDS_PER_QUEUE ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 scalar_t__ LSB_PRIVATE_MASK_HI_OFFSET ; 
 scalar_t__ LSB_PRIVATE_MASK_LO_OFFSET ; 
 scalar_t__ LSB_PUBLIC_MASK_HI_OFFSET ; 
 scalar_t__ LSB_PUBLIC_MASK_LO_OFFSET ; 
 int MAX_DMAPOOL_NAME_LEN ; 
 unsigned int MAX_HW_QUEUES ; 
 int FUNC2 (struct task_struct*) ; 
 int QUEUE_SIZE_VAL ; 
 int /*<<< orphan*/  Q_DESC_SIZE ; 
 scalar_t__ Q_MASK_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SUPPORTED_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC4 (struct ccp_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccp_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ccp_device*) ; 
 int /*<<< orphan*/  ccp5_irq_bh ; 
 int /*<<< orphan*/  ccp5_irq_handler ; 
 int /*<<< orphan*/  FUNC7 (struct ccp_device*) ; 
 int FUNC8 (struct ccp_device*) ; 
 int /*<<< orphan*/  ccp_cmd_queue_thread ; 
 int FUNC9 (struct ccp_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ccp_cmd_queue*,int) ; 
 void* FUNC11 (struct ccp_cmd_queue*,int) ; 
 int FUNC12 (struct ccp_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ccp_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*) ; 
 struct dma_pool* FUNC17 (char*,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct dma_pool*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 void* FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int,scalar_t__) ; 
 struct task_struct* FUNC24 (int /*<<< orphan*/ ,struct ccp_cmd_queue*,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct task_struct*) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,struct ccp_device*) ; 
 int FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ccp_device*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC32 (struct task_struct*) ; 

__attribute__((used)) static int FUNC33(struct ccp_device *ccp)
{
	struct device *dev = ccp->dev;
	struct ccp_cmd_queue *cmd_q;
	struct dma_pool *dma_pool;
	char dma_pool_name[MAX_DMAPOOL_NAME_LEN];
	unsigned int qmr, i;
	u64 status;
	u32 status_lo, status_hi;
	int ret;

	/* Find available queues */
	qmr = FUNC22(ccp->io_regs + Q_MASK_REG);
	for (i = 0; (i < MAX_HW_QUEUES) && (ccp->cmd_q_count < ccp->max_q_count); i++) {
		if (!(qmr & (1 << i)))
			continue;

		/* Allocate a dma pool for this queue */
		FUNC28(dma_pool_name, sizeof(dma_pool_name), "%s_q%d",
			 ccp->name, i);
		dma_pool = FUNC17(dma_pool_name, dev,
					   CCP_DMAPOOL_MAX_SIZE,
					   CCP_DMAPOOL_ALIGN, 0);
		if (!dma_pool) {
			FUNC15(dev, "unable to allocate dma pool\n");
			ret = -ENOMEM;
			goto e_pool;
		}

		cmd_q = &ccp->cmd_q[ccp->cmd_q_count];
		ccp->cmd_q_count++;

		cmd_q->ccp = ccp;
		cmd_q->id = i;
		cmd_q->dma_pool = dma_pool;
		FUNC27(&cmd_q->q_mutex);

		/* Page alignment satisfies our needs for N <= 128 */
		FUNC0(COMMANDS_PER_QUEUE > 128);
		cmd_q->qsize = FUNC3(Q_DESC_SIZE);
		cmd_q->qbase = FUNC19(dev, cmd_q->qsize,
						   &cmd_q->qbase_dma,
						   GFP_KERNEL);
		if (!cmd_q->qbase) {
			FUNC15(dev, "unable to allocate command queue\n");
			ret = -ENOMEM;
			goto e_pool;
		}

		cmd_q->qidx = 0;
		/* Preset some register values and masks that are queue
		 * number dependent
		 */
		cmd_q->reg_control = ccp->io_regs +
				     CMD5_Q_STATUS_INCR * (i + 1);
		cmd_q->reg_tail_lo = cmd_q->reg_control + CMD5_Q_TAIL_LO_BASE;
		cmd_q->reg_head_lo = cmd_q->reg_control + CMD5_Q_HEAD_LO_BASE;
		cmd_q->reg_int_enable = cmd_q->reg_control +
					CMD5_Q_INT_ENABLE_BASE;
		cmd_q->reg_interrupt_status = cmd_q->reg_control +
					      CMD5_Q_INTERRUPT_STATUS_BASE;
		cmd_q->reg_status = cmd_q->reg_control + CMD5_Q_STATUS_BASE;
		cmd_q->reg_int_status = cmd_q->reg_control +
					CMD5_Q_INT_STATUS_BASE;
		cmd_q->reg_dma_status = cmd_q->reg_control +
					CMD5_Q_DMA_STATUS_BASE;
		cmd_q->reg_dma_read_status = cmd_q->reg_control +
					     CMD5_Q_DMA_READ_STATUS_BASE;
		cmd_q->reg_dma_write_status = cmd_q->reg_control +
					      CMD5_Q_DMA_WRITE_STATUS_BASE;

		FUNC21(&cmd_q->int_queue);

		FUNC14(dev, "queue #%u available\n", i);
	}

	if (ccp->cmd_q_count == 0) {
		FUNC16(dev, "no command queues available\n");
		ret = -EIO;
		goto e_pool;
	}

	/* Turn off the queues and disable interrupts until ready */
	FUNC5(ccp);
	for (i = 0; i < ccp->cmd_q_count; i++) {
		cmd_q = &ccp->cmd_q[i];

		cmd_q->qcontrol = 0; /* Start with nothing */
		FUNC23(cmd_q->qcontrol, cmd_q->reg_control);

		FUNC22(cmd_q->reg_int_status);
		FUNC22(cmd_q->reg_status);

		/* Clear the interrupt status */
		FUNC23(SUPPORTED_INTERRUPTS, cmd_q->reg_interrupt_status);
	}

	FUNC14(dev, "Requesting an IRQ...\n");
	/* Request an irq */
	ret = FUNC30(ccp->sp, ccp5_irq_handler, ccp->name, ccp);
	if (ret) {
		FUNC15(dev, "unable to allocate an IRQ\n");
		goto e_pool;
	}
	/* Initialize the ISR tasklet */
	if (ccp->use_tasklet)
		FUNC31(&ccp->irq_tasklet, ccp5_irq_bh,
			     (unsigned long)ccp);

	FUNC14(dev, "Loading LSB map...\n");
	/* Copy the private LSB mask to the public registers */
	status_lo = FUNC22(ccp->io_regs + LSB_PRIVATE_MASK_LO_OFFSET);
	status_hi = FUNC22(ccp->io_regs + LSB_PRIVATE_MASK_HI_OFFSET);
	FUNC23(status_lo, ccp->io_regs + LSB_PUBLIC_MASK_LO_OFFSET);
	FUNC23(status_hi, ccp->io_regs + LSB_PUBLIC_MASK_HI_OFFSET);
	status = ((u64)status_hi<<30) | (u64)status_lo;

	FUNC14(dev, "Configuring virtual queues...\n");
	/* Configure size of each virtual queue accessible to host */
	for (i = 0; i < ccp->cmd_q_count; i++) {
		u32 dma_addr_lo;
		u32 dma_addr_hi;

		cmd_q = &ccp->cmd_q[i];

		cmd_q->qcontrol &= ~(CMD5_Q_SIZE << CMD5_Q_SHIFT);
		cmd_q->qcontrol |= QUEUE_SIZE_VAL << CMD5_Q_SHIFT;

		cmd_q->qdma_tail = cmd_q->qbase_dma;
		dma_addr_lo = FUNC26(cmd_q->qdma_tail);
		FUNC23((u32)dma_addr_lo, cmd_q->reg_tail_lo);
		FUNC23((u32)dma_addr_lo, cmd_q->reg_head_lo);

		dma_addr_hi = FUNC20(cmd_q->qdma_tail);
		cmd_q->qcontrol |= (dma_addr_hi << 16);
		FUNC23(cmd_q->qcontrol, cmd_q->reg_control);

		/* Find the LSB regions accessible to the queue */
		FUNC10(cmd_q, status);
		cmd_q->lsb = -1; /* Unassigned value */
	}

	FUNC14(dev, "Assigning LSBs...\n");
	ret = FUNC8(ccp);
	if (ret) {
		FUNC15(dev, "Unable to assign LSBs (%d)\n", ret);
		goto e_irq;
	}

	/* Optimization: pre-allocate LSB slots for each queue */
	for (i = 0; i < ccp->cmd_q_count; i++) {
		ccp->cmd_q[i].sb_key = FUNC11(&ccp->cmd_q[i], 2);
		ccp->cmd_q[i].sb_ctx = FUNC11(&ccp->cmd_q[i], 2);
	}

	FUNC14(dev, "Starting threads...\n");
	/* Create a kthread for each queue */
	for (i = 0; i < ccp->cmd_q_count; i++) {
		struct task_struct *kthread;

		cmd_q = &ccp->cmd_q[i];

		kthread = FUNC24(ccp_cmd_queue_thread, cmd_q,
					 "%s-q%u", ccp->name, cmd_q->id);
		if (FUNC1(kthread)) {
			FUNC15(dev, "error creating queue thread (%ld)\n",
				FUNC2(kthread));
			ret = FUNC2(kthread);
			goto e_kthread;
		}

		cmd_q->kthread = kthread;
		FUNC32(kthread);
	}

	FUNC14(dev, "Enabling interrupts...\n");
	FUNC6(ccp);

	FUNC14(dev, "Registering device...\n");
	/* Put this on the unit list to make it available */
	FUNC7(ccp);

	ret = FUNC12(ccp);
	if (ret)
		goto e_kthread;

	/* Register the DMA engine support */
	ret = FUNC9(ccp);
	if (ret)
		goto e_hwrng;

#ifdef CONFIG_CRYPTO_DEV_CCP_DEBUGFS
	/* Set up debugfs entries */
	ccp5_debugfs_setup(ccp);
#endif

	return 0;

e_hwrng:
	FUNC13(ccp);

e_kthread:
	for (i = 0; i < ccp->cmd_q_count; i++)
		if (ccp->cmd_q[i].kthread)
			FUNC25(ccp->cmd_q[i].kthread);

e_irq:
	FUNC29(ccp->sp, ccp);

e_pool:
	for (i = 0; i < ccp->cmd_q_count; i++)
		FUNC18(ccp->cmd_q[i].dma_pool);

	return ret;
}