
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef void* u32 ;
struct TYPE_23__ {void* byte_swap; } ;
struct TYPE_24__ {TYPE_8__ passthru; } ;
struct TYPE_16__ {int length; int address; } ;
struct TYPE_21__ {void* sb; TYPE_1__ dma; } ;
struct TYPE_22__ {TYPE_6__ u; void* type; } ;
struct TYPE_18__ {int length; int address; } ;
struct TYPE_19__ {TYPE_3__ dma; void* sb; } ;
struct TYPE_20__ {TYPE_4__ u; void* type; } ;
struct ccp_op {int eom; int soc; TYPE_9__ u; TYPE_7__ dst; TYPE_5__ src; void* jobid; struct ccp_cmd_queue* cmd_q; } ;
struct TYPE_17__ {int address; } ;
struct ccp_dm_workarea {int length; TYPE_2__ dma; } ;
struct ccp_cmd_queue {TYPE_12__* ccp; } ;
typedef int op ;
struct TYPE_15__ {TYPE_11__* vdata; } ;
struct TYPE_14__ {TYPE_10__* perform; } ;
struct TYPE_13__ {int (* passthru ) (struct ccp_op*) ;} ;


 void* CCP_MEMTYPE_SB ;
 void* CCP_MEMTYPE_SYSTEM ;
 int memset (struct ccp_op*,int ,int) ;
 int stub1 (struct ccp_op*) ;

__attribute__((used)) static int ccp_copy_to_from_sb(struct ccp_cmd_queue *cmd_q,
          struct ccp_dm_workarea *wa, u32 jobid, u32 sb,
          u32 byte_swap, bool from)
{
 struct ccp_op op;

 memset(&op, 0, sizeof(op));

 op.cmd_q = cmd_q;
 op.jobid = jobid;
 op.eom = 1;

 if (from) {
  op.soc = 1;
  op.src.type = CCP_MEMTYPE_SB;
  op.src.u.sb = sb;
  op.dst.type = CCP_MEMTYPE_SYSTEM;
  op.dst.u.dma.address = wa->dma.address;
  op.dst.u.dma.length = wa->length;
 } else {
  op.src.type = CCP_MEMTYPE_SYSTEM;
  op.src.u.dma.address = wa->dma.address;
  op.src.u.dma.length = wa->length;
  op.dst.type = CCP_MEMTYPE_SB;
  op.dst.u.sb = sb;
 }

 op.u.passthru.byte_swap = byte_swap;

 return cmd_q->ccp->vdata->perform->passthru(&op);
}
