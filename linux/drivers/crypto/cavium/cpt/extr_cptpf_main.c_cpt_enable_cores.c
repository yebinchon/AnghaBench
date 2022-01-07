
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct cpt_device {int max_se_cores; int reg_base; } ;


 scalar_t__ AE_TYPES ;
 int CPTX_PF_EXE_CTL (int ) ;
 int CSR_DELAY ;
 int cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void cpt_enable_cores(struct cpt_device *cpt, u64 coremask,
        u8 type)
{
 u64 pf_exe_ctl;

 if (type == AE_TYPES)
  coremask = (coremask << cpt->max_se_cores);

 pf_exe_ctl = cpt_read_csr64(cpt->reg_base, CPTX_PF_EXE_CTL(0));
 cpt_write_csr64(cpt->reg_base, CPTX_PF_EXE_CTL(0),
   (pf_exe_ctl | coremask));
 udelay(CSR_DELAY);
}
