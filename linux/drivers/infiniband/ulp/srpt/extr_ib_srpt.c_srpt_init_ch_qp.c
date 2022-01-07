
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct srpt_rdma_ch {int pkey; TYPE_2__* sport; int using_rdma_cm; } ;
struct ib_qp_attr {int pkey_index; int port_num; int qp_access_flags; int qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_4__ {int port; TYPE_1__* sdev; } ;
struct TYPE_3__ {int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_QPS_INIT ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_STATE ;
 int WARN_ON_ONCE (int ) ;
 int ib_find_cached_pkey (int ,int ,int ,int *) ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int) ;
 int kfree (struct ib_qp_attr*) ;
 struct ib_qp_attr* kzalloc (int,int ) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int srpt_init_ch_qp(struct srpt_rdma_ch *ch, struct ib_qp *qp)
{
 struct ib_qp_attr *attr;
 int ret;

 WARN_ON_ONCE(ch->using_rdma_cm);

 attr = kzalloc(sizeof(*attr), GFP_KERNEL);
 if (!attr)
  return -ENOMEM;

 attr->qp_state = IB_QPS_INIT;
 attr->qp_access_flags = IB_ACCESS_LOCAL_WRITE;
 attr->port_num = ch->sport->port;

 ret = ib_find_cached_pkey(ch->sport->sdev->device, ch->sport->port,
      ch->pkey, &attr->pkey_index);
 if (ret < 0)
  pr_err("Translating pkey %#x failed (%d) - using index 0\n",
         ch->pkey, ret);

 ret = ib_modify_qp(qp, attr,
      IB_QP_STATE | IB_QP_ACCESS_FLAGS | IB_QP_PORT |
      IB_QP_PKEY_INDEX);

 kfree(attr);
 return ret;
}
