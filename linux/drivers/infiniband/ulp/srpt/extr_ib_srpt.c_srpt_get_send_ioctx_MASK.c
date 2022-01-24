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
struct TYPE_4__ {int map_tag; int map_cpu; } ;
struct srpt_send_ioctx {int queue_status_only; TYPE_2__ cmd; TYPE_2__ sense_data; scalar_t__ n_rw_ctx; scalar_t__ n_rdma; int /*<<< orphan*/  recv_ioctx; int /*<<< orphan*/  state; struct srpt_rdma_ch* ch; } ;
struct srpt_rdma_ch {struct srpt_send_ioctx** ioctx_ring; TYPE_1__* sess; } ;
struct TYPE_3__ {int /*<<< orphan*/  sess_tag_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SRPT_STATE_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static struct srpt_send_ioctx *FUNC4(struct srpt_rdma_ch *ch)
{
	struct srpt_send_ioctx *ioctx;
	int tag, cpu;

	FUNC0(!ch);

	tag = FUNC3(&ch->sess->sess_tag_pool, &cpu);
	if (tag < 0)
		return NULL;

	ioctx = ch->ioctx_ring[tag];
	FUNC0(ioctx->ch != ch);
	ioctx->state = SRPT_STATE_NEW;
	FUNC1(ioctx->recv_ioctx);
	ioctx->n_rdma = 0;
	ioctx->n_rw_ctx = 0;
	ioctx->queue_status_only = false;
	/*
	 * transport_init_se_cmd() does not initialize all fields, so do it
	 * here.
	 */
	FUNC2(&ioctx->cmd, 0, sizeof(ioctx->cmd));
	FUNC2(&ioctx->sense_data, 0, sizeof(ioctx->sense_data));
	ioctx->cmd.map_tag = tag;
	ioctx->cmd.map_cpu = cpu;

	return ioctx;
}