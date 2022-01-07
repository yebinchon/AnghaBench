
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gt215_ramfuc {int dummy; } ;


 int * mr ;
 int ram_mask (struct gt215_ramfuc*,int ,int,int) ;
 int ram_nsec (struct gt215_ramfuc*,int) ;

__attribute__((used)) static void
nvkm_sddr2_dll_reset(struct gt215_ramfuc *fuc)
{
 ram_mask(fuc, mr[0], 0x100, 0x100);
 ram_nsec(fuc, 1000);
 ram_mask(fuc, mr[0], 0x100, 0x000);
 ram_nsec(fuc, 1000);
}
