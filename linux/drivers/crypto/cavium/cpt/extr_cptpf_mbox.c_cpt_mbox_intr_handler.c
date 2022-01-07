
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u8 ;
typedef unsigned long long u64 ;
struct cpt_device {TYPE_1__* pdev; int reg_base; } ;
struct TYPE_2__ {int dev; } ;


 int CPTX_PF_MBOX_INTX (int ,int ) ;
 unsigned long long CPT_MAX_VF_NUM ;
 int cpt_clear_mbox_intr (struct cpt_device*,unsigned long long) ;
 int cpt_handle_mbox_intr (struct cpt_device*,unsigned long long) ;
 unsigned long long cpt_read_csr64 (int ,int ) ;
 int dev_dbg (int *,char*,unsigned long long,...) ;

void cpt_mbox_intr_handler (struct cpt_device *cpt, int mbx)
{
 u64 intr;
 u8 vf;

 intr = cpt_read_csr64(cpt->reg_base, CPTX_PF_MBOX_INTX(0, 0));
 dev_dbg(&cpt->pdev->dev, "PF interrupt Mbox%d 0x%llx\n", mbx, intr);
 for (vf = 0; vf < CPT_MAX_VF_NUM; vf++) {
  if (intr & (1ULL << vf)) {
   dev_dbg(&cpt->pdev->dev, "Intr from VF %d\n", vf);
   cpt_handle_mbox_intr(cpt, vf);
   cpt_clear_mbox_intr(cpt, vf);
  }
 }
}
