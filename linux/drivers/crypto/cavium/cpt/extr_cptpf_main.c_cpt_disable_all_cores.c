
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct cpt_device {int reg_base; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int CPTX_PF_EXEC_BUSY (int ) ;
 int CPTX_PF_EXE_CTL (int ) ;
 int CPTX_PF_GX_EN (int ,scalar_t__) ;
 scalar_t__ CPT_MAX_CORE_GROUPS ;
 int CSR_DELAY ;
 scalar_t__ cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int udelay (int ) ;

__attribute__((used)) static void cpt_disable_all_cores(struct cpt_device *cpt)
{
 u32 grp, timeout = 100;
 struct device *dev = &cpt->pdev->dev;


 for (grp = 0; grp < CPT_MAX_CORE_GROUPS; grp++) {
  cpt_write_csr64(cpt->reg_base, CPTX_PF_GX_EN(0, grp), 0);
  udelay(CSR_DELAY);
 }

 grp = cpt_read_csr64(cpt->reg_base, CPTX_PF_EXEC_BUSY(0));
 while (grp) {
  dev_err(dev, "Cores still busy");
  grp = cpt_read_csr64(cpt->reg_base,
         CPTX_PF_EXEC_BUSY(0));
  if (timeout--)
   break;

  udelay(CSR_DELAY);
 }

 cpt_write_csr64(cpt->reg_base, CPTX_PF_EXE_CTL(0), 0);
}
