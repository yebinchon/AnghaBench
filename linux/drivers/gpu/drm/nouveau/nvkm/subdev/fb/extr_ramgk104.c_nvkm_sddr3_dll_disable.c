
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gk104_ramfuc {int dummy; } ;


 int * mr ;
 int ram_mask (struct gk104_ramfuc*,int ,int,int) ;
 int ram_nsec (struct gk104_ramfuc*,int) ;
 int ram_rd32 (struct gk104_ramfuc*,int ) ;

__attribute__((used)) static void
nvkm_sddr3_dll_disable(struct gk104_ramfuc *fuc)
{
 u32 mr1_old = ram_rd32(fuc, mr[1]);

 if (!(mr1_old & 0x1)) {
  ram_mask(fuc, mr[1], 0x1, 0x1);
  ram_nsec(fuc, 1000);
 }
}
