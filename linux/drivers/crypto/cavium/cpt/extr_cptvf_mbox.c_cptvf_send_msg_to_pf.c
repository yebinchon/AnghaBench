
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_vf {int reg_base; } ;
struct cpt_mbox {int data; int msg; } ;


 int CPTX_VFX_PF_MBOXX (int ,int ,int) ;
 int cpt_write_csr64 (int ,int ,int ) ;

__attribute__((used)) static void cptvf_send_msg_to_pf(struct cpt_vf *cptvf, struct cpt_mbox *mbx)
{

 cpt_write_csr64(cptvf->reg_base, CPTX_VFX_PF_MBOXX(0, 0, 0),
   mbx->msg);
 cpt_write_csr64(cptvf->reg_base, CPTX_VFX_PF_MBOXX(0, 0, 1),
   mbx->data);
}
