
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ramfuc_reg {int force; } ;
struct ramfuc {int dummy; } ;


 int ramfuc_rd32 (struct ramfuc*,struct ramfuc_reg*) ;
 int ramfuc_wr32 (struct ramfuc*,struct ramfuc_reg*,int) ;

__attribute__((used)) static inline u32
ramfuc_mask(struct ramfuc *ram, struct ramfuc_reg *reg, u32 mask, u32 data)
{
 u32 temp = ramfuc_rd32(ram, reg);
 if (temp != ((temp & ~mask) | data) || reg->force) {
  ramfuc_wr32(ram, reg, (temp & ~mask) | data);
  reg->force = 0;
 }
 return temp;
}
