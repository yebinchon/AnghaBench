
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct microcode {int * code; int phys_base; int code_size; } ;
struct cpt_device {int reg_base; TYPE_1__* pdev; struct microcode* mcode; } ;
struct TYPE_2__ {int dev; } ;


 int CPTX_PF_ENGX_UCODE_BASE (int ,size_t) ;
 size_t CPT_MAX_CORE_GROUPS ;
 size_t CPT_MAX_TOTAL_CORES ;
 int cpt_write_csr64 (int ,int ,unsigned long long) ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void cpt_unload_microcode(struct cpt_device *cpt)
{
 u32 grp = 0, core;


 for (grp = 0; grp < CPT_MAX_CORE_GROUPS; grp++) {
  struct microcode *mcode = &cpt->mcode[grp];

  if (cpt->mcode[grp].code)
   dma_free_coherent(&cpt->pdev->dev, mcode->code_size,
       mcode->code, mcode->phys_base);
  mcode->code = ((void*)0);
 }

 for (core = 0; core < CPT_MAX_TOTAL_CORES; core++)
  cpt_write_csr64(cpt->reg_base,
    CPTX_PF_ENGX_UCODE_BASE(0, core), 0ull);
}
