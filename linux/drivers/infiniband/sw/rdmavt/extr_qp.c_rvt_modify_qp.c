
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ qp_type; int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct rvt_qp {int state; scalar_t__ port_num; scalar_t__ s_mig_state; int s_draining; scalar_t__ s_pkey_index; scalar_t__ remote_qpn; int s_next_psn; int s_psn; int s_sending_psn; int s_last_psn; int s_sending_hpsn; int r_psn; scalar_t__ s_alt_pkey_index; int s_retry_cnt; int s_retry; int s_rnr_retry_cnt; int s_rnr_retry; int r_min_rnr_timer; scalar_t__ r_max_rd_atomic; int r_lock; int s_hlock; int s_lock; TYPE_3__ ibqp; int s_max_rd_atomic; int qkey; int timeout; int timeout_jiffies; int pmtu; int log_pmtu; int alt_ah_attr; int remote_ah_attr; int s_srate; int srate_mbps; int qp_access_flags; int s_cur; int s_last; int r_flags; } ;
struct TYPE_10__ {int (* get_pmtu_from_attr ) (struct rvt_dev_info*,struct rvt_qp*,struct ib_qp_attr*) ;int (* modify_qp ) (struct rvt_qp*,struct ib_qp_attr*,int,struct ib_udata*) ;int (* mtu_from_qp ) (struct rvt_dev_info*,struct rvt_qp*,int) ;scalar_t__ (* check_modify_qp ) (struct rvt_qp*,struct ib_qp_attr*,int,struct ib_udata*) ;} ;
struct TYPE_7__ {scalar_t__ max_rdma_atomic; int psn_modify_mask; } ;
struct rvt_dev_info {TYPE_4__ driver_f; TYPE_1__ dparms; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int cur_qp_state; int qp_state; scalar_t__ alt_pkey_index; scalar_t__ pkey_index; int min_rnr_timer; scalar_t__ port_num; scalar_t__ dest_qp_num; int retry_cnt; int rnr_retry; scalar_t__ path_mig_state; scalar_t__ max_dest_rd_atomic; int sq_psn; int rq_psn; int max_rd_atomic; int qkey; int timeout; int alt_ah_attr; int ah_attr; int qp_access_flags; } ;
struct ib_qp {int qp_type; TYPE_5__* device; } ;
struct TYPE_8__ {TYPE_3__* qp; } ;
struct ib_event {int event; TYPE_2__ element; int device; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
struct TYPE_11__ {scalar_t__ phys_port_cnt; } ;


 int EINVAL ;
 int IB_EVENT_PATH_MIG ;
 int IB_EVENT_QP_LAST_WQE_REACHED ;
 scalar_t__ IB_MIG_ARMED ;
 scalar_t__ IB_MIG_MIGRATED ;
 scalar_t__ IB_MIG_REARM ;
 int IB_MULTICAST_LID_BASE ;

 int IB_QPS_INIT ;


 int IB_QPS_RTS ;


 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_SMI ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_ALT_PATH ;
 int IB_QP_AV ;
 int IB_QP_CUR_STATE ;
 int IB_QP_DEST_QPN ;
 int IB_QP_MAX_DEST_RD_ATOMIC ;
 int IB_QP_MAX_QP_RD_ATOMIC ;
 int IB_QP_MIN_RNR_TIMER ;
 int IB_QP_PATH_MIG_STATE ;
 int IB_QP_PATH_MTU ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_QKEY ;
 int IB_QP_RETRY_CNT ;
 int IB_QP_RNR_RETRY ;
 int IB_QP_RQ_PSN ;
 int IB_QP_SQ_PSN ;
 int IB_QP_STATE ;
 int IB_QP_TIMEOUT ;
 int IB_WC_WR_FLUSH_ERR ;
 int OPA_MCAST_NR ;
 scalar_t__ RVT_QPN_MASK ;
 int RVT_R_COMM_EST ;
 scalar_t__ be16_to_cpu (int ) ;
 int ib_modify_qp_is_ok (int,int,int ,int) ;
 int ib_rate_to_mbps (int ) ;
 struct rvt_dev_info* ib_to_rvt (TYPE_5__*) ;
 struct rvt_qp* ibqp_to_rvtqp (struct ib_qp*) ;
 int ilog2 (int ) ;
 scalar_t__ opa_get_mcast_base (int ) ;
 scalar_t__ rdma_ah_get_dlid (int *) ;
 scalar_t__ rdma_ah_get_port_num (int *) ;
 int rdma_ah_get_static_rate (int *) ;
 int rdma_cap_opa_ah (TYPE_5__*,scalar_t__) ;
 int rdma_replace_ah_attr (int *,int *) ;
 scalar_t__ rvt_check_ah (int ,int *) ;
 int rvt_error_qp (struct rvt_qp*,int ) ;
 scalar_t__ rvt_get_npkeys (struct rvt_dev_info*) ;
 int rvt_insert_qp (struct rvt_dev_info*,struct rvt_qp*) ;
 int rvt_reset_qp (struct rvt_dev_info*,struct rvt_qp*,int ) ;
 int rvt_timeout_to_jiffies (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (struct rvt_qp*,struct ib_qp_attr*,int,struct ib_udata*) ;
 int stub2 (struct rvt_dev_info*,struct rvt_qp*,struct ib_qp_attr*) ;
 int stub3 (struct rvt_dev_info*,struct rvt_qp*,int) ;
 int stub4 (struct rvt_qp*,struct ib_qp_attr*,int,struct ib_udata*) ;
 int stub5 (struct ib_event*,int ) ;
 int stub6 (struct ib_event*,int ) ;

int rvt_modify_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
    int attr_mask, struct ib_udata *udata)
{
 struct rvt_dev_info *rdi = ib_to_rvt(ibqp->device);
 struct rvt_qp *qp = ibqp_to_rvtqp(ibqp);
 enum ib_qp_state cur_state, new_state;
 struct ib_event ev;
 int lastwqe = 0;
 int mig = 0;
 int pmtu = 0;
 int opa_ah;

 spin_lock_irq(&qp->r_lock);
 spin_lock(&qp->s_hlock);
 spin_lock(&qp->s_lock);

 cur_state = attr_mask & IB_QP_CUR_STATE ?
  attr->cur_qp_state : qp->state;
 new_state = attr_mask & IB_QP_STATE ? attr->qp_state : cur_state;
 opa_ah = rdma_cap_opa_ah(ibqp->device, qp->port_num);

 if (!ib_modify_qp_is_ok(cur_state, new_state, ibqp->qp_type,
    attr_mask))
  goto inval;

 if (rdi->driver_f.check_modify_qp &&
     rdi->driver_f.check_modify_qp(qp, attr, attr_mask, udata))
  goto inval;

 if (attr_mask & IB_QP_AV) {
  if (opa_ah) {
   if (rdma_ah_get_dlid(&attr->ah_attr) >=
    opa_get_mcast_base(OPA_MCAST_NR))
    goto inval;
  } else {
   if (rdma_ah_get_dlid(&attr->ah_attr) >=
    be16_to_cpu(IB_MULTICAST_LID_BASE))
    goto inval;
  }

  if (rvt_check_ah(qp->ibqp.device, &attr->ah_attr))
   goto inval;
 }

 if (attr_mask & IB_QP_ALT_PATH) {
  if (opa_ah) {
   if (rdma_ah_get_dlid(&attr->alt_ah_attr) >=
    opa_get_mcast_base(OPA_MCAST_NR))
    goto inval;
  } else {
   if (rdma_ah_get_dlid(&attr->alt_ah_attr) >=
    be16_to_cpu(IB_MULTICAST_LID_BASE))
    goto inval;
  }

  if (rvt_check_ah(qp->ibqp.device, &attr->alt_ah_attr))
   goto inval;
  if (attr->alt_pkey_index >= rvt_get_npkeys(rdi))
   goto inval;
 }

 if (attr_mask & IB_QP_PKEY_INDEX)
  if (attr->pkey_index >= rvt_get_npkeys(rdi))
   goto inval;

 if (attr_mask & IB_QP_MIN_RNR_TIMER)
  if (attr->min_rnr_timer > 31)
   goto inval;

 if (attr_mask & IB_QP_PORT)
  if (qp->ibqp.qp_type == IB_QPT_SMI ||
      qp->ibqp.qp_type == IB_QPT_GSI ||
      attr->port_num == 0 ||
      attr->port_num > ibqp->device->phys_port_cnt)
   goto inval;

 if (attr_mask & IB_QP_DEST_QPN)
  if (attr->dest_qp_num > RVT_QPN_MASK)
   goto inval;

 if (attr_mask & IB_QP_RETRY_CNT)
  if (attr->retry_cnt > 7)
   goto inval;

 if (attr_mask & IB_QP_RNR_RETRY)
  if (attr->rnr_retry > 7)
   goto inval;
 if (attr_mask & IB_QP_PATH_MTU) {
  pmtu = rdi->driver_f.get_pmtu_from_attr(rdi, qp, attr);
  if (pmtu < 0)
   goto inval;
 }

 if (attr_mask & IB_QP_PATH_MIG_STATE) {
  if (attr->path_mig_state == IB_MIG_REARM) {
   if (qp->s_mig_state == IB_MIG_ARMED)
    goto inval;
   if (new_state != IB_QPS_RTS)
    goto inval;
  } else if (attr->path_mig_state == IB_MIG_MIGRATED) {
   if (qp->s_mig_state == IB_MIG_REARM)
    goto inval;
   if (new_state != IB_QPS_RTS && new_state != 129)
    goto inval;
   if (qp->s_mig_state == IB_MIG_ARMED)
    mig = 1;
  } else {
   goto inval;
  }
 }

 if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC)
  if (attr->max_dest_rd_atomic > rdi->dparms.max_rdma_atomic)
   goto inval;

 switch (new_state) {
 case 131:
  if (qp->state != 131)
   rvt_reset_qp(rdi, qp, ibqp->qp_type);
  break;

 case 130:

  qp->r_flags &= ~RVT_R_COMM_EST;
  qp->state = new_state;
  break;

 case 129:
  qp->s_draining = qp->s_last != qp->s_cur;
  qp->state = new_state;
  break;

 case 128:
  if (qp->ibqp.qp_type == IB_QPT_RC)
   goto inval;
  qp->state = new_state;
  break;

 case 132:
  lastwqe = rvt_error_qp(qp, IB_WC_WR_FLUSH_ERR);
  break;

 default:
  qp->state = new_state;
  break;
 }

 if (attr_mask & IB_QP_PKEY_INDEX)
  qp->s_pkey_index = attr->pkey_index;

 if (attr_mask & IB_QP_PORT)
  qp->port_num = attr->port_num;

 if (attr_mask & IB_QP_DEST_QPN)
  qp->remote_qpn = attr->dest_qp_num;

 if (attr_mask & IB_QP_SQ_PSN) {
  qp->s_next_psn = attr->sq_psn & rdi->dparms.psn_modify_mask;
  qp->s_psn = qp->s_next_psn;
  qp->s_sending_psn = qp->s_next_psn;
  qp->s_last_psn = qp->s_next_psn - 1;
  qp->s_sending_hpsn = qp->s_last_psn;
 }

 if (attr_mask & IB_QP_RQ_PSN)
  qp->r_psn = attr->rq_psn & rdi->dparms.psn_modify_mask;

 if (attr_mask & IB_QP_ACCESS_FLAGS)
  qp->qp_access_flags = attr->qp_access_flags;

 if (attr_mask & IB_QP_AV) {
  rdma_replace_ah_attr(&qp->remote_ah_attr, &attr->ah_attr);
  qp->s_srate = rdma_ah_get_static_rate(&attr->ah_attr);
  qp->srate_mbps = ib_rate_to_mbps(qp->s_srate);
 }

 if (attr_mask & IB_QP_ALT_PATH) {
  rdma_replace_ah_attr(&qp->alt_ah_attr, &attr->alt_ah_attr);
  qp->s_alt_pkey_index = attr->alt_pkey_index;
 }

 if (attr_mask & IB_QP_PATH_MIG_STATE) {
  qp->s_mig_state = attr->path_mig_state;
  if (mig) {
   qp->remote_ah_attr = qp->alt_ah_attr;
   qp->port_num = rdma_ah_get_port_num(&qp->alt_ah_attr);
   qp->s_pkey_index = qp->s_alt_pkey_index;
  }
 }

 if (attr_mask & IB_QP_PATH_MTU) {
  qp->pmtu = rdi->driver_f.mtu_from_qp(rdi, qp, pmtu);
  qp->log_pmtu = ilog2(qp->pmtu);
 }

 if (attr_mask & IB_QP_RETRY_CNT) {
  qp->s_retry_cnt = attr->retry_cnt;
  qp->s_retry = attr->retry_cnt;
 }

 if (attr_mask & IB_QP_RNR_RETRY) {
  qp->s_rnr_retry_cnt = attr->rnr_retry;
  qp->s_rnr_retry = attr->rnr_retry;
 }

 if (attr_mask & IB_QP_MIN_RNR_TIMER)
  qp->r_min_rnr_timer = attr->min_rnr_timer;

 if (attr_mask & IB_QP_TIMEOUT) {
  qp->timeout = attr->timeout;
  qp->timeout_jiffies = rvt_timeout_to_jiffies(qp->timeout);
 }

 if (attr_mask & IB_QP_QKEY)
  qp->qkey = attr->qkey;

 if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC)
  qp->r_max_rd_atomic = attr->max_dest_rd_atomic;

 if (attr_mask & IB_QP_MAX_QP_RD_ATOMIC)
  qp->s_max_rd_atomic = attr->max_rd_atomic;

 if (rdi->driver_f.modify_qp)
  rdi->driver_f.modify_qp(qp, attr, attr_mask, udata);

 spin_unlock(&qp->s_lock);
 spin_unlock(&qp->s_hlock);
 spin_unlock_irq(&qp->r_lock);

 if (cur_state == 131 && new_state == IB_QPS_INIT)
  rvt_insert_qp(rdi, qp);

 if (lastwqe) {
  ev.device = qp->ibqp.device;
  ev.element.qp = &qp->ibqp;
  ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
  qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
 }
 if (mig) {
  ev.device = qp->ibqp.device;
  ev.element.qp = &qp->ibqp;
  ev.event = IB_EVENT_PATH_MIG;
  qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
 }
 return 0;

inval:
 spin_unlock(&qp->s_lock);
 spin_unlock(&qp->s_hlock);
 spin_unlock_irq(&qp->r_lock);
 return -EINVAL;
}
