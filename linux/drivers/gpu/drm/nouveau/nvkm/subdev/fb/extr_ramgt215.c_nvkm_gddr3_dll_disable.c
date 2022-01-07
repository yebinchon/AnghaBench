
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gt215_ramfuc {int dummy; } ;


 int ram_nsec (struct gt215_ramfuc*,int) ;
 int ram_rd32 (struct gt215_ramfuc*,int) ;
 int ram_wr32 (struct gt215_ramfuc*,int,int) ;

__attribute__((used)) static void
nvkm_gddr3_dll_disable(struct gt215_ramfuc *fuc, u32 *mr)
{
 u32 mr1_old = ram_rd32(fuc, mr[1]);

 if (!(mr1_old & 0x40)) {
  ram_wr32(fuc, mr[1], mr[1]);
  ram_nsec(fuc, 1000);
 }
}
