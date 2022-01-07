
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pri; } ;
union cptx_pf_qx_ctl {int u; TYPE_1__ s; } ;
typedef int u32 ;
struct cpt_device {int reg_base; } ;


 int CPTX_PF_QX_CTL (int ,int) ;
 int cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int ) ;

__attribute__((used)) static void cpt_cfg_vq_priority(struct cpt_device *cpt, int vf, u32 pri)
{
 union cptx_pf_qx_ctl pf_qx_ctl;

 pf_qx_ctl.u = cpt_read_csr64(cpt->reg_base, CPTX_PF_QX_CTL(0, vf));
 pf_qx_ctl.s.pri = pri;
 cpt_write_csr64(cpt->reg_base, CPTX_PF_QX_CTL(0, vf), pf_qx_ctl.u);
}
