
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpt_vf {int reg_base; } ;


 int CPTX_VQX_MISC_INT (int ,int ) ;
 int cpt_read_csr64 (int ,int ) ;

__attribute__((used)) static u64 cptvf_read_vf_misc_intr_status(struct cpt_vf *cptvf)
{
 return cpt_read_csr64(cptvf->reg_base, CPTX_VQX_MISC_INT(0, 0));
}
