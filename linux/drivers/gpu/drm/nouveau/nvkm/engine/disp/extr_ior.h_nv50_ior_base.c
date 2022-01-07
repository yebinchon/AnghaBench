
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_ior {int id; } ;



__attribute__((used)) static inline u32
nv50_ior_base(struct nvkm_ior *ior)
{
 return ior->id * 0x800;
}
