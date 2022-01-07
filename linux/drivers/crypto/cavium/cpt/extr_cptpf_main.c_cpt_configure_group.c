
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct cpt_device {int max_se_cores; int reg_base; } ;


 scalar_t__ AE_TYPES ;
 int CPTX_PF_GX_EN (int ,scalar_t__) ;
 int CSR_DELAY ;
 int cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void cpt_configure_group(struct cpt_device *cpt, u8 grp,
    u64 coremask, u8 type)
{
 u64 pf_gx_en = 0;

 if (type == AE_TYPES)
  coremask = (coremask << cpt->max_se_cores);

 pf_gx_en = cpt_read_csr64(cpt->reg_base, CPTX_PF_GX_EN(0, grp));
 cpt_write_csr64(cpt->reg_base, CPTX_PF_GX_EN(0, grp),
   (pf_gx_en | coremask));
 udelay(CSR_DELAY);
}
