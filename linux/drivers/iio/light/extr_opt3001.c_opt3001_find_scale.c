
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opt3001_scale {int val; int val2; } ;
struct opt3001 {int dummy; } ;


 int ARRAY_SIZE (struct opt3001_scale*) ;
 int EINVAL ;
 struct opt3001_scale* opt3001_scales ;

__attribute__((used)) static int opt3001_find_scale(const struct opt3001 *opt, int val,
  int val2, u8 *exponent)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(opt3001_scales); i++) {
  const struct opt3001_scale *scale = &opt3001_scales[i];






  if ((val * 1000 + val2 / 1000) <=
    (scale->val * 1000 + scale->val2 / 1000)) {
   *exponent = i;
   return 0;
  }
 }

 return -EINVAL;
}
