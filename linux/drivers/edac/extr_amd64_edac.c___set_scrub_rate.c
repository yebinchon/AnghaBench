
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct amd64_pvt {int fam; int model; int F3; int F2; } ;
struct TYPE_3__ {scalar_t__ scrubval; scalar_t__ bandwidth; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int F15H_M60H_SCRCTRL ;
 int SCRCTRL ;
 int __f17h_set_scrubval (struct amd64_pvt*,scalar_t__) ;
 int f15h_select_dct (struct amd64_pvt*,int) ;
 int pci_write_bits32 (int ,int ,scalar_t__,int) ;
 TYPE_1__* scrubrates ;

__attribute__((used)) static int __set_scrub_rate(struct amd64_pvt *pvt, u32 new_bw, u32 min_rate)
{
 u32 scrubval;
 int i;
 for (i = 0; i < ARRAY_SIZE(scrubrates) - 1; i++) {




  if (scrubrates[i].scrubval < min_rate)
   continue;

  if (scrubrates[i].bandwidth <= new_bw)
   break;
 }

 scrubval = scrubrates[i].scrubval;

 if (pvt->fam == 0x17 || pvt->fam == 0x18) {
  __f17h_set_scrubval(pvt, scrubval);
 } else if (pvt->fam == 0x15 && pvt->model == 0x60) {
  f15h_select_dct(pvt, 0);
  pci_write_bits32(pvt->F2, F15H_M60H_SCRCTRL, scrubval, 0x001F);
  f15h_select_dct(pvt, 1);
  pci_write_bits32(pvt->F2, F15H_M60H_SCRCTRL, scrubval, 0x001F);
 } else {
  pci_write_bits32(pvt->F3, SCRCTRL, scrubval, 0x001F);
 }

 if (scrubval)
  return scrubrates[i].bandwidth;

 return 0;
}
