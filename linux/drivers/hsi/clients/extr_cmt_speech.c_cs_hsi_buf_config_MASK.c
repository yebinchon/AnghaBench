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
struct cs_hsi_iface {unsigned int iface_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  pm_qos_req; scalar_t__ buf_size; scalar_t__ slot_size; scalar_t__ tx_slot; scalar_t__ rx_slot; int /*<<< orphan*/  flags; TYPE_1__* mmap_cfg; int /*<<< orphan*/  data_state; } ;
struct cs_buffer_config {int /*<<< orphan*/  flags; scalar_t__ buf_size; } ;
struct TYPE_2__ {scalar_t__ buf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_QOS_LATENCY_FOR_DATA_USEC ; 
 unsigned int CS_STATE_CONFIGURED ; 
 unsigned int CS_STATE_OPENED ; 
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cs_hsi_iface*,struct cs_buffer_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_hsi_iface*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct cs_hsi_iface*,struct cs_buffer_config*) ; 
 int FUNC4 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC5 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct cs_hsi_iface *hi,
					struct cs_buffer_config *buf_cfg)
{
	int r = 0;
	unsigned int old_state = hi->iface_state;

	FUNC11(&hi->lock);
	/* Prevent new transactions during buffer reconfig */
	if (old_state == CS_STATE_CONFIGURED)
		hi->iface_state = CS_STATE_OPENED;
	FUNC12(&hi->lock);

	/*
	 * make sure that no non-zero data reads are ongoing before
	 * proceeding to change the buffer layout
	 */
	r = FUNC4(hi);
	if (r < 0)
		return r;

	FUNC0(FUNC6(hi->data_state));

	FUNC11(&hi->lock);
	r = FUNC1(hi, buf_cfg);
	if (r < 0)
		goto error;

	hi->buf_size = buf_cfg->buf_size;
	hi->mmap_cfg->buf_size = hi->buf_size;
	hi->flags = buf_cfg->flags;

	hi->rx_slot = 0;
	hi->tx_slot = 0;
	hi->slot_size = 0;

	if (hi->buf_size)
		FUNC3(hi, buf_cfg);
	else
		FUNC2(hi, old_state);

	FUNC12(&hi->lock);

	if (old_state != hi->iface_state) {
		if (hi->iface_state == CS_STATE_CONFIGURED) {
			FUNC9(&hi->pm_qos_req,
				PM_QOS_CPU_DMA_LATENCY,
				CS_QOS_LATENCY_FOR_DATA_USEC);
			FUNC7();
			FUNC5(hi);
			FUNC8();
		} else if (old_state == CS_STATE_CONFIGURED) {
			FUNC10(&hi->pm_qos_req);
		}
	}
	return r;

error:
	FUNC12(&hi->lock);
	return r;
}