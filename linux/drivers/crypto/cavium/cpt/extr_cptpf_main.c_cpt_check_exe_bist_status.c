
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cptx_pf_exe_bist_status {int u; int member_0; } ;
typedef int u64 ;
struct cpt_device {int reg_base; } ;


 int CPTX_PF_EXE_BIST_STATUS (int ) ;
 int cpt_read_csr64 (int ,int ) ;

__attribute__((used)) static u64 cpt_check_exe_bist_status(struct cpt_device *cpt)
{
 union cptx_pf_exe_bist_status bist_sts = {0};

 bist_sts.u = cpt_read_csr64(cpt->reg_base,
        CPTX_PF_EXE_BIST_STATUS(0));

 return bist_sts.u;
}
