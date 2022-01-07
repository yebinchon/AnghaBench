
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ramfuc {int memx; } ;


 int nvkm_memx_train (int ) ;

__attribute__((used)) static inline void
ramfuc_train(struct ramfuc *ram)
{
 nvkm_memx_train(ram->memx);
}
