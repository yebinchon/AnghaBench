
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ramfuc_reg {unsigned int mask; scalar_t__ stride; int data; scalar_t__ addr; int sequence; } ;
struct ramfuc {int memx; int sequence; } ;


 int nvkm_memx_wr32 (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void
ramfuc_wr32(struct ramfuc *ram, struct ramfuc_reg *reg, u32 data)
{
 unsigned int mask, off = 0;

 reg->sequence = ram->sequence;
 reg->data = data;

 for (mask = reg->mask; mask > 0; mask = (mask & ~1) >> 1) {
  if (mask & 1)
   nvkm_memx_wr32(ram->memx, reg->addr+off, reg->data);
  off += reg->stride;
 }
}
