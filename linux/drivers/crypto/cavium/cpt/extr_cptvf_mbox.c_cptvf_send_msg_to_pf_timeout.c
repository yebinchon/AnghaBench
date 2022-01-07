
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpt_vf {int pf_acked; int pf_nacked; int vfid; TYPE_1__* pdev; } ;
struct cpt_mbox {int msg; } ;
struct TYPE_2__ {int dev; } ;


 int CPT_MBOX_MSG_TIMEOUT ;
 int EBUSY ;
 int EINVAL ;
 int cptvf_send_msg_to_pf (struct cpt_vf*,struct cpt_mbox*) ;
 int dev_err (int *,char*,int,int ) ;
 int msleep (int) ;

__attribute__((used)) static int cptvf_send_msg_to_pf_timeout(struct cpt_vf *cptvf,
     struct cpt_mbox *mbx)
{
 int timeout = CPT_MBOX_MSG_TIMEOUT;
 int sleep = 10;

 cptvf->pf_acked = 0;
 cptvf->pf_nacked = 0;
 cptvf_send_msg_to_pf(cptvf, mbx);

 while (!cptvf->pf_acked) {
  if (cptvf->pf_nacked)
   return -EINVAL;
  msleep(sleep);
  if (cptvf->pf_acked)
   break;
  timeout -= sleep;
  if (!timeout) {
   dev_err(&cptvf->pdev->dev, "PF didn't ack to mbox msg %llx from VF%u\n",
    (mbx->msg & 0xFF), cptvf->vfid);
   return -EBUSY;
  }
 }

 return 0;
}
