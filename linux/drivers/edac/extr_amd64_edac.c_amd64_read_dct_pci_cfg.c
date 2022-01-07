
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct amd64_pvt {int fam; int model; int F2; } ;


 int EINVAL ;
 int amd64_read_pci_cfg (int ,int,int *) ;
 int dct_ganging_enabled (struct amd64_pvt*) ;
 int f15h_select_dct (struct amd64_pvt*,int) ;

__attribute__((used)) static inline int amd64_read_dct_pci_cfg(struct amd64_pvt *pvt, u8 dct,
      int offset, u32 *val)
{
 switch (pvt->fam) {
 case 0xf:
  if (dct || offset >= 0x100)
   return -EINVAL;
  break;

 case 0x10:
  if (dct) {





   if (dct_ganging_enabled(pvt))
    return 0;

   offset += 0x100;
  }
  break;

 case 0x15:




  dct = (dct && pvt->model == 0x30) ? 3 : dct;
  f15h_select_dct(pvt, dct);
  break;

 case 0x16:
  if (dct)
   return -EINVAL;
  break;

 default:
  break;
 }
 return amd64_read_pci_cfg(pvt->F2, offset, val);
}
