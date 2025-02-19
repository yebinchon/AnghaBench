
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cpt_vf {int priority; struct pci_dev* pdev; } ;
struct cpt_mbox {int data; int msg; } ;


 int CPT_MSG_VQ_PRIORITY ;
 int EBUSY ;
 scalar_t__ cptvf_send_msg_to_pf_timeout (struct cpt_vf*,struct cpt_mbox*) ;
 int dev_err (int *,char*) ;

int cptvf_send_vf_priority_msg(struct cpt_vf *cptvf)
{
 struct pci_dev *pdev = cptvf->pdev;
 struct cpt_mbox mbx = {};

 mbx.msg = CPT_MSG_VQ_PRIORITY;

 mbx.data = cptvf->priority;
 if (cptvf_send_msg_to_pf_timeout(cptvf, &mbx)) {
  dev_err(&pdev->dev, "PF didn't respond to vf_type msg\n");
  return -EBUSY;
 }
 return 0;
}
