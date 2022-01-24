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
struct mbox_chan {TYPE_1__* mbox; scalar_t__ con_priv; } ;
struct cmdq_thread {int /*<<< orphan*/  task_busy_list; scalar_t__ base; scalar_t__ atomic_exec; scalar_t__ priority; } ;
struct cmdq_task {int /*<<< orphan*/  list_entry; scalar_t__ pa_base; struct cmdq_pkt* pkt; struct cmdq_thread* thread; struct cmdq* cmdq; } ;
struct cmdq_pkt {scalar_t__ cmd_buf_size; scalar_t__ pa_base; } ;
struct cmdq {int suspended; int /*<<< orphan*/  clock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long CMDQ_INST_SIZE ; 
 scalar_t__ CMDQ_THR_CURR_ADDR ; 
 scalar_t__ CMDQ_THR_ENABLED ; 
 scalar_t__ CMDQ_THR_ENABLE_TASK ; 
 scalar_t__ CMDQ_THR_END_ADDR ; 
 scalar_t__ CMDQ_THR_IRQ_EN ; 
 scalar_t__ CMDQ_THR_IRQ_ENABLE ; 
 scalar_t__ CMDQ_THR_PRIORITY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_task*) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdq_thread*) ; 
 scalar_t__ FUNC6 (struct cmdq*,struct cmdq_thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct cmdq_thread*) ; 
 scalar_t__ FUNC8 (struct cmdq*,struct cmdq_thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct cmdq_thread*,unsigned long) ; 
 struct cmdq* FUNC10 (int /*<<< orphan*/ ) ; 
 struct cmdq_task* FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct mbox_chan *chan, void *data)
{
	struct cmdq_pkt *pkt = (struct cmdq_pkt *)data;
	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
	struct cmdq *cmdq = FUNC10(chan->mbox->dev);
	struct cmdq_task *task;
	unsigned long curr_pa, end_pa;

	/* Client should not flush new tasks if suspended. */
	FUNC1(cmdq->suspended);

	task = FUNC11(sizeof(*task), GFP_ATOMIC);
	if (!task)
		return -ENOMEM;

	task->cmdq = cmdq;
	FUNC0(&task->list_entry);
	task->pa_base = pkt->pa_base;
	task->thread = thread;
	task->pkt = pkt;

	if (FUNC12(&thread->task_busy_list)) {
		FUNC1(FUNC2(cmdq->clock) < 0);
		FUNC1(FUNC6(cmdq, thread) < 0);

		FUNC16(task->pa_base, thread->base + CMDQ_THR_CURR_ADDR);
		FUNC16(task->pa_base + pkt->cmd_buf_size,
		       thread->base + CMDQ_THR_END_ADDR);
		FUNC16(thread->priority, thread->base + CMDQ_THR_PRIORITY);
		FUNC16(CMDQ_THR_IRQ_EN, thread->base + CMDQ_THR_IRQ_ENABLE);
		FUNC16(CMDQ_THR_ENABLED, thread->base + CMDQ_THR_ENABLE_TASK);
	} else {
		FUNC1(FUNC8(cmdq, thread) < 0);
		curr_pa = FUNC14(thread->base + CMDQ_THR_CURR_ADDR);
		end_pa = FUNC14(thread->base + CMDQ_THR_END_ADDR);

		/*
		 * Atomic execution should remove the following wfe, i.e. only
		 * wait event at first task, and prevent to pause when running.
		 */
		if (thread->atomic_exec) {
			/* GCE is executing if command is not WFE */
			if (!FUNC5(thread)) {
				FUNC7(thread);
				FUNC9(thread, end_pa);
				FUNC1(FUNC8(cmdq, thread) < 0);
				/* set to this task directly */
				FUNC16(task->pa_base,
				       thread->base + CMDQ_THR_CURR_ADDR);
			} else {
				FUNC3(task);
				FUNC4(task);
				FUNC15(); /* modify jump before enable thread */
			}
		} else {
			/* check boundary */
			if (curr_pa == end_pa - CMDQ_INST_SIZE ||
			    curr_pa == end_pa) {
				/* set to this task directly */
				FUNC16(task->pa_base,
				       thread->base + CMDQ_THR_CURR_ADDR);
			} else {
				FUNC3(task);
				FUNC15(); /* modify jump before enable thread */
			}
		}
		FUNC16(task->pa_base + pkt->cmd_buf_size,
		       thread->base + CMDQ_THR_END_ADDR);
		FUNC7(thread);
	}
	FUNC13(&task->list_entry, &thread->task_busy_list);

	return 0;
}