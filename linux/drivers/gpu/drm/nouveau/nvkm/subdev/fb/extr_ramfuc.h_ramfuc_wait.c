
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ramfuc {int memx; } ;


 int nvkm_memx_wait (int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
ramfuc_wait(struct ramfuc *ram, u32 addr, u32 mask, u32 data, u32 nsec)
{
 nvkm_memx_wait(ram->memx, addr, mask, data, nsec);
}
