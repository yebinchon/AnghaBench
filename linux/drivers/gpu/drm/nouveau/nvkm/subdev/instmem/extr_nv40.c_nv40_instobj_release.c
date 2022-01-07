
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_memory {int dummy; } ;


 int wmb () ;

__attribute__((used)) static void
nv40_instobj_release(struct nvkm_memory *memory)
{
 wmb();
}
