
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amd64_pvt {int fam; int model; int dct_sel_hi; int dct_sel_lo; } ;



__attribute__((used)) static inline u8 dct_sel_interleave_addr(struct amd64_pvt *pvt)
{
 if (pvt->fam == 0x15 && pvt->model >= 0x30)
  return (((pvt->dct_sel_hi >> 9) & 0x1) << 2) |
   ((pvt->dct_sel_lo >> 6) & 0x3);

 return ((pvt)->dct_sel_lo >> 6) & 0x3;
}
