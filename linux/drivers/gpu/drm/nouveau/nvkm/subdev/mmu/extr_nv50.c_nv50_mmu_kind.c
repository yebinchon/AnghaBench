
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_mmu {int dummy; } ;


 int ARRAY_SIZE (int const*) ;

const u8 *
nv50_mmu_kind(struct nvkm_mmu *base, int *count)
{
 static const u8
 kind[128] = {
  0x01, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
  0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
  0x01, 0x01, 0x01, 0x01, 0x7f, 0x7f, 0x7f, 0x7f,
  0x02, 0x02, 0x02, 0x02, 0x7f, 0x7f, 0x7f, 0x7f,
  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x7f,
  0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x7f,
  0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
  0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02,
  0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x7f, 0x7f,
  0x7f, 0x7f, 0x7f, 0x7f, 0x01, 0x01, 0x01, 0x7f,
  0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x7f,
  0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02,
  0x01, 0x7f, 0x02, 0x7f, 0x01, 0x7f, 0x02, 0x7f,
  0x01, 0x01, 0x02, 0x02, 0x01, 0x01, 0x7f, 0x7f
 };
 *count = ARRAY_SIZE(kind);
 return kind;
}
