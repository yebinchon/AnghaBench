
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_mbox {int msg; int data; } ;
struct cpt_device {int reg_base; } ;


 int CPTX_PF_VFX_MBOXX (int ,int,int) ;
 int cpt_write_csr64 (int ,int ,int ) ;

__attribute__((used)) static void cpt_send_msg_to_vf(struct cpt_device *cpt, int vf,
          struct cpt_mbox *mbx)
{

 cpt_write_csr64(cpt->reg_base, CPTX_PF_VFX_MBOXX(0, vf, 1),
   mbx->data);
 cpt_write_csr64(cpt->reg_base, CPTX_PF_VFX_MBOXX(0, vf, 0), mbx->msg);
}
