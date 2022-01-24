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
typedef  int /*<<< orphan*/  u32 ;
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct hsi_msg {scalar_t__ status; struct cs_hsi_iface* context; } ;
struct cs_timestamp {void* tv_nsec; void* tv_sec; } ;
struct cs_hsi_iface {int flags; int /*<<< orphan*/  lock; TYPE_2__* mmap_cfg; TYPE_1__* cl; int /*<<< orphan*/  control_state; } ;
typedef  void* __u32 ;
struct TYPE_4__ {struct cs_timestamp tstamp_rx_ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int CS_FEAT_TSTAMP_RX_CTRL ; 
 scalar_t__ HSI_STATUS_ERROR ; 
 int /*<<< orphan*/  SSI_CHANNEL_STATE_READING ; 
 int /*<<< orphan*/  FUNC0 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hsi_msg *msg)
{
	u32 cmd = FUNC0(msg);
	struct cs_hsi_iface *hi = msg->context;

	FUNC8(&hi->lock);
	hi->control_state &= ~SSI_CHANNEL_STATE_READING;
	if (msg->status == HSI_STATUS_ERROR) {
		FUNC6(&hi->cl->device, "Control RX error detected\n");
		FUNC9(&hi->lock);
		FUNC1(hi, msg);
		goto out;
	}
	FUNC5(&hi->cl->device, "Read on control: %08X\n", cmd);
	FUNC4(msg);
	if (hi->flags & CS_FEAT_TSTAMP_RX_CTRL) {
		struct timespec64 tspec;
		struct cs_timestamp *tstamp =
			&hi->mmap_cfg->tstamp_rx_ctrl;

		FUNC7(&tspec);

		tstamp->tv_sec = (__u32) tspec.tv_sec;
		tstamp->tv_nsec = (__u32) tspec.tv_nsec;
	}
	FUNC9(&hi->lock);

	FUNC3(cmd);

out:
	FUNC2(hi);
}