
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kx_odr_map {int val; int val2; } ;


 int EINVAL ;
 struct kx_odr_map const* ERR_PTR (int ) ;

__attribute__((used)) static const struct kx_odr_map *kxcjk1013_find_odr_value(
 const struct kx_odr_map *map, size_t map_size, int val, int val2)
{
 int i;

 for (i = 0; i < map_size; ++i) {
  if (map[i].val == val && map[i].val2 == val2)
   return &map[i];
 }

 return ERR_PTR(-EINVAL);
}
