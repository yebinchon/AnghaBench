
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kx_odr_map {int odr_bits; int val; int val2; } ;


 int EINVAL ;
 int IIO_VAL_INT_PLUS_MICRO ;

__attribute__((used)) static int kxcjk1013_convert_odr_value(const struct kx_odr_map *map,
           size_t map_size, int odr_bits,
           int *val, int *val2)
{
 int i;

 for (i = 0; i < map_size; ++i) {
  if (map[i].odr_bits == odr_bits) {
   *val = map[i].val;
   *val2 = map[i].val2;
   return IIO_VAL_INT_PLUS_MICRO;
  }
 }

 return -EINVAL;
}
