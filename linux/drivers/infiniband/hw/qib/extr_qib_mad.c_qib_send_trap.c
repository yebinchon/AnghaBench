
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ sm_lid; unsigned long subnet_timeout; scalar_t__ trap_timeout; int lock; TYPE_3__* sm_ah; int tid; struct ib_mad_agent* send_agent; } ;
struct qib_ibport {TYPE_1__ rvp; } ;
struct ib_smp {int class_version; int data; int attr_id; int tid; int method; int mgmt_class; int base_version; } ;
struct ib_mad_send_buf {struct ib_mad_send_buf* ah; struct ib_smp* mad; } ;
struct ib_mad_agent {int dummy; } ;
struct ib_ah {struct ib_ah* ah; struct ib_smp* mad; } ;
struct TYPE_6__ {struct ib_mad_send_buf ibah; } ;
struct TYPE_5__ {int lflags; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 int IB_LID_PERMISSIVE ;
 int IB_MGMT_BASE_VERSION ;
 int IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 int IB_MGMT_MAD_DATA ;
 int IB_MGMT_MAD_HDR ;
 int IB_MGMT_METHOD_TRAP ;
 int IB_SMP_ATTR_NOTICE ;
 scalar_t__ IS_ERR (struct ib_mad_send_buf*) ;
 int PTR_ERR (struct ib_mad_send_buf*) ;
 int QIBL_LINKACTIVE ;
 scalar_t__ be16_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 struct ib_mad_send_buf* ib_create_send_mad (struct ib_mad_agent*,int ,int ,int ,int ,int ,int ,int ) ;
 int ib_free_send_mad (struct ib_mad_send_buf*) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;
 TYPE_3__* ibah_to_rvtah (struct ib_mad_send_buf*) ;
 scalar_t__ jiffies ;
 int memcpy (int ,void*,unsigned int) ;
 TYPE_2__* ppd_from_ibp (struct qib_ibport*) ;
 struct ib_mad_send_buf* qib_create_qp0_ah (struct qib_ibport*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;
 scalar_t__ usecs_to_jiffies (unsigned long) ;

__attribute__((used)) static void qib_send_trap(struct qib_ibport *ibp, void *data, unsigned len)
{
 struct ib_mad_send_buf *send_buf;
 struct ib_mad_agent *agent;
 struct ib_smp *smp;
 int ret;
 unsigned long flags;
 unsigned long timeout;

 agent = ibp->rvp.send_agent;
 if (!agent)
  return;


 if (!(ppd_from_ibp(ibp)->lflags & QIBL_LINKACTIVE))
  return;


 if (ibp->rvp.trap_timeout &&
     time_before(jiffies, ibp->rvp.trap_timeout))
  return;

 send_buf = ib_create_send_mad(agent, 0, 0, 0, IB_MGMT_MAD_HDR,
          IB_MGMT_MAD_DATA, GFP_ATOMIC,
          IB_MGMT_BASE_VERSION);
 if (IS_ERR(send_buf))
  return;

 smp = send_buf->mad;
 smp->base_version = IB_MGMT_BASE_VERSION;
 smp->mgmt_class = IB_MGMT_CLASS_SUBN_LID_ROUTED;
 smp->class_version = 1;
 smp->method = IB_MGMT_METHOD_TRAP;
 ibp->rvp.tid++;
 smp->tid = cpu_to_be64(ibp->rvp.tid);
 smp->attr_id = IB_SMP_ATTR_NOTICE;

 memcpy(smp->data, data, len);

 spin_lock_irqsave(&ibp->rvp.lock, flags);
 if (!ibp->rvp.sm_ah) {
  if (ibp->rvp.sm_lid != be16_to_cpu(IB_LID_PERMISSIVE)) {
   struct ib_ah *ah;

   ah = qib_create_qp0_ah(ibp, (u16)ibp->rvp.sm_lid);
   if (IS_ERR(ah))
    ret = PTR_ERR(ah);
   else {
    send_buf->ah = ah;
    ibp->rvp.sm_ah = ibah_to_rvtah(ah);
    ret = 0;
   }
  } else
   ret = -EINVAL;
 } else {
  send_buf->ah = &ibp->rvp.sm_ah->ibah;
  ret = 0;
 }
 spin_unlock_irqrestore(&ibp->rvp.lock, flags);

 if (!ret)
  ret = ib_post_send_mad(send_buf, ((void*)0));
 if (!ret) {

  timeout = (4096 * (1UL << ibp->rvp.subnet_timeout)) / 1000;
  ibp->rvp.trap_timeout = jiffies + usecs_to_jiffies(timeout);
 } else {
  ib_free_send_mad(send_buf);
  ibp->rvp.trap_timeout = 0;
 }
}
