
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int u32 ;
struct ib_conn {scalar_t__ pi_support; TYPE_1__* device; } ;
struct iser_conn {int scsi_sg_tablesize; scalar_t__ state; int state_mutex; struct ib_conn ib_conn; int max_cmds; } ;
struct iscsi_iser_task {int dummy; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int sig_prot_cap; int device_cap_flags; } ;
struct ib_device {TYPE_3__ dev; TYPE_2__ attrs; } ;
struct Scsi_Host {int max_cmd_len; int sg_tablesize; scalar_t__ max_sectors; void* can_queue; int virt_boundary_mask; scalar_t__ max_channel; scalar_t__ max_id; int max_lun; int cmd_per_lun; int transportt; } ;
struct TYPE_4__ {struct ib_device* ib_device; } ;


 int IB_DEVICE_SG_GAPS_REG ;
 scalar_t__ ISER_CONN_UP ;
 int ISER_DEF_XMIT_CMDS_MAX ;
 int MASK_4K ;
 int PAGE_SIZE ;
 int SHOST_DIX_GUARD_CRC ;
 int SHOST_DIX_GUARD_IP ;
 scalar_t__ iscsi_host_add (struct Scsi_Host*,int *) ;
 struct Scsi_Host* iscsi_host_alloc (int *,int ,int ) ;
 int iscsi_host_free (struct Scsi_Host*) ;
 int iscsi_host_remove (struct Scsi_Host*) ;
 int iscsi_iser_scsi_transport ;
 int iscsi_iser_sht ;
 int iscsi_iser_transport ;
 int iscsi_max_lun ;
 struct iscsi_cls_session* iscsi_session_setup (int *,struct Scsi_Host*,void*,int ,int,int ,int ) ;
 int iser_dbg (char*,struct iser_conn*,int,scalar_t__) ;
 int iser_dif_prot_caps (int) ;
 int iser_err (char*,struct iser_conn*) ;
 scalar_t__ iser_max_sectors ;
 int iser_warn (char*,scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,int) ;
 void* min_t (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_host_set_guard (struct Scsi_Host*,int) ;
 int scsi_host_set_prot (struct Scsi_Host*,int ) ;
 int u16 ;

__attribute__((used)) static struct iscsi_cls_session *
iscsi_iser_session_create(struct iscsi_endpoint *ep,
     uint16_t cmds_max, uint16_t qdepth,
     uint32_t initial_cmdsn)
{
 struct iscsi_cls_session *cls_session;
 struct Scsi_Host *shost;
 struct iser_conn *iser_conn = ((void*)0);
 struct ib_conn *ib_conn;
 struct ib_device *ib_dev;
 u32 max_fr_sectors;

 shost = iscsi_host_alloc(&iscsi_iser_sht, 0, 0);
 if (!shost)
  return ((void*)0);
 shost->transportt = iscsi_iser_scsi_transport;
 shost->cmd_per_lun = qdepth;
 shost->max_lun = iscsi_max_lun;
 shost->max_id = 0;
 shost->max_channel = 0;
 shost->max_cmd_len = 16;





 if (ep) {
  iser_conn = ep->dd_data;
  shost->sg_tablesize = iser_conn->scsi_sg_tablesize;
  shost->can_queue = min_t(u16, cmds_max, iser_conn->max_cmds);

  mutex_lock(&iser_conn->state_mutex);
  if (iser_conn->state != ISER_CONN_UP) {
   iser_err("iser conn %p already started teardown\n",
     iser_conn);
   mutex_unlock(&iser_conn->state_mutex);
   goto free_host;
  }

  ib_conn = &iser_conn->ib_conn;
  ib_dev = ib_conn->device->ib_device;
  if (ib_conn->pi_support) {
   u32 sig_caps = ib_dev->attrs.sig_prot_cap;

   scsi_host_set_prot(shost, iser_dif_prot_caps(sig_caps));
   scsi_host_set_guard(shost, SHOST_DIX_GUARD_IP |
         SHOST_DIX_GUARD_CRC);
  }

  if (!(ib_dev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG))
   shost->virt_boundary_mask = ~MASK_4K;

  if (iscsi_host_add(shost, ib_dev->dev.parent)) {
   mutex_unlock(&iser_conn->state_mutex);
   goto free_host;
  }
  mutex_unlock(&iser_conn->state_mutex);
 } else {
  shost->can_queue = min_t(u16, cmds_max, ISER_DEF_XMIT_CMDS_MAX);
  if (iscsi_host_add(shost, ((void*)0)))
   goto free_host;
 }

 max_fr_sectors = (shost->sg_tablesize * PAGE_SIZE) >> 9;
 shost->max_sectors = min(iser_max_sectors, max_fr_sectors);

 iser_dbg("iser_conn %p, sg_tablesize %u, max_sectors %u\n",
   iser_conn, shost->sg_tablesize,
   shost->max_sectors);

 if (shost->max_sectors < iser_max_sectors)
  iser_warn("max_sectors was reduced from %u to %u\n",
     iser_max_sectors, shost->max_sectors);

 cls_session = iscsi_session_setup(&iscsi_iser_transport, shost,
       shost->can_queue, 0,
       sizeof(struct iscsi_iser_task),
       initial_cmdsn, 0);
 if (!cls_session)
  goto remove_host;

 return cls_session;

remove_host:
 iscsi_host_remove(shost);
free_host:
 iscsi_host_free(shost);
 return ((void*)0);
}
