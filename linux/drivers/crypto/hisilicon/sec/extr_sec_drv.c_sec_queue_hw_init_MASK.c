#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  paddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  paddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  paddr; } ;
struct sec_queue {scalar_t__ regs; TYPE_3__ ring_db; TYPE_2__ ring_cq; TYPE_1__ ring_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEC_QUEUE_AR_FROCE_NOALLOC ; 
 scalar_t__ SEC_QUEUE_LEN ; 
 int SEC_Q_INIT_AND_STAT_CLEAR ; 
 scalar_t__ SEC_Q_INIT_REG ; 
 scalar_t__ SEC_Q_OT_TH_REG ; 
 scalar_t__ SEC_Q_PROC_NUM_CFG_REG ; 
 int /*<<< orphan*/  FUNC0 (struct sec_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct sec_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sec_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sec_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sec_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sec_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sec_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sec_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct sec_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sec_queue*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct sec_queue *queue)
{
	FUNC1(queue, SEC_QUEUE_AR_FROCE_NOALLOC);
	FUNC3(queue, SEC_QUEUE_AR_FROCE_NOALLOC);
	FUNC2(queue, 1);
	FUNC4(queue, 1);

	/* Enable out of order queue */
	FUNC10(queue, true);

	/* Interrupt after a single complete element */
	FUNC11(1, queue->regs + SEC_Q_PROC_NUM_CFG_REG);

	FUNC6(queue, SEC_QUEUE_LEN - 1);

	FUNC5(queue, queue->ring_cmd.paddr);

	FUNC9(queue, queue->ring_cq.paddr);

	FUNC7(queue, queue->ring_db.paddr);

	FUNC11(0x100, queue->regs + SEC_Q_OT_TH_REG);

	FUNC0(queue);
	FUNC8(queue);
	FUNC11(SEC_Q_INIT_AND_STAT_CLEAR, queue->regs + SEC_Q_INIT_REG);
}