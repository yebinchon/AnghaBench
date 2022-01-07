
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pl08x_driver_data {int lli_words; TYPE_2__* adev; TYPE_1__* vd; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ pl080s; } ;


 size_t PL080S_LLI_CCTL2 ;
 size_t PL080_LLI_CCTL ;
 size_t PL080_LLI_DST ;
 size_t PL080_LLI_LLI ;
 size_t PL080_LLI_SRC ;
 int dev_vdbg (int *,char*,...) ;

__attribute__((used)) static void pl08x_dump_lli(struct pl08x_driver_data *pl08x,
      const u32 *llis_va, int num_llis)
{
 int i;

 if (pl08x->vd->pl080s) {
  dev_vdbg(&pl08x->adev->dev,
   "%-3s %-9s  %-10s %-10s %-10s %-10s %s\n",
   "lli", "", "csrc", "cdst", "clli", "cctl", "cctl2");
  for (i = 0; i < num_llis; i++) {
   dev_vdbg(&pl08x->adev->dev,
    "%3d @%p: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
    i, llis_va, llis_va[PL080_LLI_SRC],
    llis_va[PL080_LLI_DST], llis_va[PL080_LLI_LLI],
    llis_va[PL080_LLI_CCTL],
    llis_va[PL080S_LLI_CCTL2]);
   llis_va += pl08x->lli_words;
  }
 } else {
  dev_vdbg(&pl08x->adev->dev,
   "%-3s %-9s  %-10s %-10s %-10s %s\n",
   "lli", "", "csrc", "cdst", "clli", "cctl");
  for (i = 0; i < num_llis; i++) {
   dev_vdbg(&pl08x->adev->dev,
    "%3d @%p: 0x%08x 0x%08x 0x%08x 0x%08x\n",
    i, llis_va, llis_va[PL080_LLI_SRC],
    llis_va[PL080_LLI_DST], llis_va[PL080_LLI_LLI],
    llis_va[PL080_LLI_CCTL]);
   llis_va += pl08x->lli_words;
  }
 }
}
