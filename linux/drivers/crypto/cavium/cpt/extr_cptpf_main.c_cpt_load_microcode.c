
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct microcode {scalar_t__ code_size; int core_mask; scalar_t__ phys_base; scalar_t__ is_ae; int code; } ;
struct device {int dummy; } ;
struct cpt_device {int reg_base; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int CPTX_PF_ENGX_UCODE_BASE (int ,int) ;
 int CPT_MAX_SE_CORES ;
 int CPT_MAX_TOTAL_CORES ;
 int EINVAL ;
 int cpt_write_csr64 (int ,int ,int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int cpt_load_microcode(struct cpt_device *cpt, struct microcode *mcode)
{
 int ret = 0, core = 0, shift = 0;
 u32 total_cores = 0;
 struct device *dev = &cpt->pdev->dev;

 if (!mcode || !mcode->code) {
  dev_err(dev, "Either the mcode is null or data is NULL\n");
  return -EINVAL;
 }

 if (mcode->code_size == 0) {
  dev_err(dev, "microcode size is 0\n");
  return -EINVAL;
 }




 if (mcode->is_ae) {
  core = CPT_MAX_SE_CORES;
  total_cores = CPT_MAX_TOTAL_CORES;
 } else {
  core = 0;
  total_cores = CPT_MAX_SE_CORES;
 }


 for (; core < total_cores ; core++, shift++) {
  if (mcode->core_mask & (1 << shift)) {
   cpt_write_csr64(cpt->reg_base,
     CPTX_PF_ENGX_UCODE_BASE(0, core),
     (u64)mcode->phys_base);
  }
 }
 return ret;
}
