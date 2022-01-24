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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u32 ;
struct ib_conn {scalar_t__ pi_support; TYPE_1__* device; } ;
struct iser_conn {int scsi_sg_tablesize; scalar_t__ state; int /*<<< orphan*/  state_mutex; struct ib_conn ib_conn; int /*<<< orphan*/  max_cmds; } ;
struct iscsi_iser_task {int dummy; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {int sig_prot_cap; int device_cap_flags; } ;
struct ib_device {TYPE_3__ dev; TYPE_2__ attrs; } ;
struct Scsi_Host {int max_cmd_len; int sg_tablesize; scalar_t__ max_sectors; void* can_queue; int /*<<< orphan*/  virt_boundary_mask; scalar_t__ max_channel; scalar_t__ max_id; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  cmd_per_lun; int /*<<< orphan*/  transportt; } ;
struct TYPE_4__ {struct ib_device* ib_device; } ;

/* Variables and functions */
 int IB_DEVICE_SG_GAPS_REG ; 
 scalar_t__ ISER_CONN_UP ; 
 int /*<<< orphan*/  ISER_DEF_XMIT_CMDS_MAX ; 
 int /*<<< orphan*/  MASK_4K ; 
 int PAGE_SIZE ; 
 int SHOST_DIX_GUARD_CRC ; 
 int SHOST_DIX_GUARD_IP ; 
 scalar_t__ FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  iscsi_iser_scsi_transport ; 
 int /*<<< orphan*/  iscsi_iser_sht ; 
 int /*<<< orphan*/  iscsi_iser_transport ; 
 int /*<<< orphan*/  iscsi_max_lun ; 
 struct iscsi_cls_session* FUNC4 (int /*<<< orphan*/ *,struct Scsi_Host*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct iser_conn*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct iser_conn*) ; 
 scalar_t__ iser_max_sectors ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct Scsi_Host*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u16 ; 

__attribute__((used)) static struct iscsi_cls_session *
FUNC15(struct iscsi_endpoint *ep,
			  uint16_t cmds_max, uint16_t qdepth,
			  uint32_t initial_cmdsn)
{
	struct iscsi_cls_session *cls_session;
	struct Scsi_Host *shost;
	struct iser_conn *iser_conn = NULL;
	struct ib_conn *ib_conn;
	struct ib_device *ib_dev;
	u32 max_fr_sectors;

	shost = FUNC1(&iscsi_iser_sht, 0, 0);
	if (!shost)
		return NULL;
	shost->transportt = iscsi_iser_scsi_transport;
	shost->cmd_per_lun = qdepth;
	shost->max_lun = iscsi_max_lun;
	shost->max_id = 0;
	shost->max_channel = 0;
	shost->max_cmd_len = 16;

	/*
	 * older userspace tools (before 2.0-870) did not pass us
	 * the leading conn's ep so this will be NULL;
	 */
	if (ep) {
		iser_conn = ep->dd_data;
		shost->sg_tablesize = iser_conn->scsi_sg_tablesize;
		shost->can_queue = FUNC10(u16, cmds_max, iser_conn->max_cmds);

		FUNC11(&iser_conn->state_mutex);
		if (iser_conn->state != ISER_CONN_UP) {
			FUNC7("iser conn %p already started teardown\n",
				 iser_conn);
			FUNC12(&iser_conn->state_mutex);
			goto free_host;
		}

		ib_conn = &iser_conn->ib_conn;
		ib_dev = ib_conn->device->ib_device;
		if (ib_conn->pi_support) {
			u32 sig_caps = ib_dev->attrs.sig_prot_cap;

			FUNC14(shost, FUNC6(sig_caps));
			FUNC13(shost, SHOST_DIX_GUARD_IP |
						   SHOST_DIX_GUARD_CRC);
		}

		if (!(ib_dev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG))
			shost->virt_boundary_mask = ~MASK_4K;

		if (FUNC0(shost, ib_dev->dev.parent)) {
			FUNC12(&iser_conn->state_mutex);
			goto free_host;
		}
		FUNC12(&iser_conn->state_mutex);
	} else {
		shost->can_queue = FUNC10(u16, cmds_max, ISER_DEF_XMIT_CMDS_MAX);
		if (FUNC0(shost, NULL))
			goto free_host;
	}

	max_fr_sectors = (shost->sg_tablesize * PAGE_SIZE) >> 9;
	shost->max_sectors = FUNC9(iser_max_sectors, max_fr_sectors);

	FUNC5("iser_conn %p, sg_tablesize %u, max_sectors %u\n",
		 iser_conn, shost->sg_tablesize,
		 shost->max_sectors);

	if (shost->max_sectors < iser_max_sectors)
		FUNC8("max_sectors was reduced from %u to %u\n",
			  iser_max_sectors, shost->max_sectors);

	cls_session = FUNC4(&iscsi_iser_transport, shost,
					  shost->can_queue, 0,
					  sizeof(struct iscsi_iser_task),
					  initial_cmdsn, 0);
	if (!cls_session)
		goto remove_host;

	return cls_session;

remove_host:
	FUNC3(shost);
free_host:
	FUNC2(shost);
	return NULL;
}