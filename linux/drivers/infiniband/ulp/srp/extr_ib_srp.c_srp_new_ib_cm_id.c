
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int service_id; int pkey; int orig_dgid; } ;
struct srp_target_port {TYPE_5__ ib_cm; int sgid; TYPE_2__* srp_host; } ;
struct TYPE_8__ {int service_id; int pkey; int dgid; int sgid; int rec_type; } ;
struct TYPE_9__ {TYPE_3__ path; struct ib_cm_id* cm_id; } ;
struct srp_rdma_ch {TYPE_4__ ib_cm; struct srp_target_port* target; } ;
struct ib_cm_id {int dummy; } ;
struct TYPE_7__ {int port; TYPE_1__* srp_dev; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ IS_ERR (struct ib_cm_id*) ;
 int PTR_ERR (struct ib_cm_id*) ;
 int SA_PATH_REC_TYPE_IB ;
 int SA_PATH_REC_TYPE_OPA ;
 struct ib_cm_id* ib_create_cm_id (int ,int ,struct srp_rdma_ch*) ;
 int ib_destroy_cm_id (struct ib_cm_id*) ;
 scalar_t__ rdma_cap_opa_ah (int ,int ) ;
 int srp_ib_cm_handler ;

__attribute__((used)) static int srp_new_ib_cm_id(struct srp_rdma_ch *ch)
{
 struct srp_target_port *target = ch->target;
 struct ib_cm_id *new_cm_id;

 new_cm_id = ib_create_cm_id(target->srp_host->srp_dev->dev,
        srp_ib_cm_handler, ch);
 if (IS_ERR(new_cm_id))
  return PTR_ERR(new_cm_id);

 if (ch->ib_cm.cm_id)
  ib_destroy_cm_id(ch->ib_cm.cm_id);
 ch->ib_cm.cm_id = new_cm_id;
 if (rdma_cap_opa_ah(target->srp_host->srp_dev->dev,
       target->srp_host->port))
  ch->ib_cm.path.rec_type = SA_PATH_REC_TYPE_OPA;
 else
  ch->ib_cm.path.rec_type = SA_PATH_REC_TYPE_IB;
 ch->ib_cm.path.sgid = target->sgid;
 ch->ib_cm.path.dgid = target->ib_cm.orig_dgid;
 ch->ib_cm.path.pkey = target->ib_cm.pkey;
 ch->ib_cm.path.service_id = target->ib_cm.service_id;

 return 0;
}
