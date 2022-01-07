
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpt_device {int reg_base; } ;


 int CPTX_PF_MBOX_INTX (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int) ;

__attribute__((used)) static void cpt_clear_mbox_intr(struct cpt_device *cpt, u32 vf)
{

 cpt_write_csr64(cpt->reg_base, CPTX_PF_MBOX_INTX(0, 0), (1 << vf));
}
