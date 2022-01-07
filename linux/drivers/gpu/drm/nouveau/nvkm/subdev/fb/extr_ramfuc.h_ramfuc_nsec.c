
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ramfuc {int memx; } ;


 int nvkm_memx_nsec (int ,int ) ;

__attribute__((used)) static inline void
ramfuc_nsec(struct ramfuc *ram, u32 nsec)
{
 nvkm_memx_nsec(ram->memx, nsec);
}
