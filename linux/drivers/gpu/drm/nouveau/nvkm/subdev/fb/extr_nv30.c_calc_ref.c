
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fb {int dummy; } ;


 int calc_bias (struct nvkm_fb*,int,int,int) ;
 int clamp (int,int ,int) ;

__attribute__((used)) static int
calc_ref(struct nvkm_fb *fb, int l, int k, int i)
{
 int j, x = 0;

 for (j = 0; j < 4; j++) {
  int m = (l >> (8 * i) & 0xff) + calc_bias(fb, k, i, j);

  x |= (0x80 | clamp(m, 0, 0x1f)) << (8 * j);
 }

 return x;
}
