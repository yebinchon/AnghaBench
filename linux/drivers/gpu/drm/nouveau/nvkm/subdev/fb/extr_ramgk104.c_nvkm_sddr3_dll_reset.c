
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gk104_ramfuc {int dummy; } ;


 int * mr ;
 int ram_mask (struct gk104_ramfuc*,int ,int,int) ;
 int ram_nuke (struct gk104_ramfuc*,int ) ;

__attribute__((used)) static void
nvkm_sddr3_dll_reset(struct gk104_ramfuc *fuc)
{
 ram_nuke(fuc, mr[0]);
 ram_mask(fuc, mr[0], 0x100, 0x100);
 ram_mask(fuc, mr[0], 0x100, 0x000);
}
