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
typedef  int /*<<< orphan*/  u16 ;
struct sdma_txreq {int tlen; scalar_t__ num_desc; int /*<<< orphan*/  list; scalar_t__ sn; scalar_t__ next_descq_idx; int /*<<< orphan*/  wait; } ;
struct sdma_engine {scalar_t__ desc_avail; int /*<<< orphan*/  descq_full_count; int /*<<< orphan*/  flush_worker; int /*<<< orphan*/  cpu; int /*<<< orphan*/  flushlist_lock; int /*<<< orphan*/  flushlist; int /*<<< orphan*/  tail_sn; int /*<<< orphan*/  tail_lock; } ;
struct iowait_work {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ECOMM ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sdma_engine*) ; 
 int /*<<< orphan*/  FUNC1 (struct iowait_work*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct iowait_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sdma_engine*,struct iowait_work*,struct sdma_txreq*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sdma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct sdma_engine*,struct sdma_txreq*) ; 
 int /*<<< orphan*/  system_highpri_wq ; 
 int /*<<< orphan*/  FUNC13 (struct sdma_engine*,scalar_t__) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct sdma_engine *sde,
		    struct iowait_work *wait,
		    struct sdma_txreq *tx,
		    bool pkts_sent)
{
	int ret = 0;
	u16 tail;
	unsigned long flags;

	/* user should have supplied entire packet */
	if (FUNC14(tx->tlen))
		return -EINVAL;
	tx->wait = FUNC2(wait);
	FUNC9(&sde->tail_lock, flags);
retry:
	if (FUNC14(!FUNC0(sde)))
		goto unlock_noconn;
	if (FUNC14(tx->num_desc > sde->desc_avail))
		goto nodesc;
	tail = FUNC12(sde, tx);
	if (wait)
		FUNC3(FUNC2(wait));
	FUNC7(sde, tail);
unlock:
	FUNC11(&sde->tail_lock, flags);
	return ret;
unlock_noconn:
	if (wait)
		FUNC3(FUNC2(wait));
	tx->next_descq_idx = 0;
#ifdef CONFIG_HFI1_DEBUG_SDMA_ORDER
	tx->sn = sde->tail_sn++;
	trace_hfi1_sdma_in_sn(sde, tx->sn);
#endif
	FUNC8(&sde->flushlist_lock);
	FUNC4(&tx->list, &sde->flushlist);
	FUNC10(&sde->flushlist_lock);
	FUNC1(wait, tx->num_desc);
	FUNC5(sde->cpu, system_highpri_wq, &sde->flush_worker);
	ret = -ECOMM;
	goto unlock;
nodesc:
	ret = FUNC6(sde, wait, tx, pkts_sent);
	if (ret == -EAGAIN) {
		ret = 0;
		goto retry;
	}
	sde->descq_full_count++;
	goto unlock;
}