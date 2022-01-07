
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ramfuc {int memx; } ;


 int nvkm_memx_wait_vblank (int ) ;

__attribute__((used)) static inline void
ramfuc_wait_vblank(struct ramfuc *ram)
{
 nvkm_memx_wait_vblank(ram->memx);
}
