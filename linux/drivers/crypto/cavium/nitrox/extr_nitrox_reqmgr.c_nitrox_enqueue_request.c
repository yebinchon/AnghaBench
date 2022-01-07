
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nitrox_softreq {int flags; struct nitrox_device* ndev; struct nitrox_cmdq* cmdq; } ;
struct TYPE_2__ {int dropped; } ;
struct nitrox_device {TYPE_1__ stats; int qlen; } ;
struct nitrox_cmdq {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EINPROGRESS ;
 int ENOSPC ;
 int atomic64_inc (int *) ;
 int backlog_list_add (struct nitrox_softreq*,struct nitrox_cmdq*) ;
 int cmdq_full (struct nitrox_cmdq*,int ) ;
 int post_backlog_cmds (struct nitrox_cmdq*) ;
 int post_se_instr (struct nitrox_softreq*,struct nitrox_cmdq*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int nitrox_enqueue_request(struct nitrox_softreq *sr)
{
 struct nitrox_cmdq *cmdq = sr->cmdq;
 struct nitrox_device *ndev = sr->ndev;


 post_backlog_cmds(cmdq);

 if (unlikely(cmdq_full(cmdq, ndev->qlen))) {
  if (!(sr->flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {

   atomic64_inc(&ndev->stats.dropped);
   return -ENOSPC;
  }

  backlog_list_add(sr, cmdq);
  return -EINPROGRESS;
 }
 post_se_instr(sr, cmdq);

 return -EINPROGRESS;
}
