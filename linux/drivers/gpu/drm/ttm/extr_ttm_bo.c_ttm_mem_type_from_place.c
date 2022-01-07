
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_place {int flags; } ;


 int EINVAL ;
 int TTM_PL_MASK_MEM ;
 int ffs (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int ttm_mem_type_from_place(const struct ttm_place *place,
       uint32_t *mem_type)
{
 int pos;

 pos = ffs(place->flags & TTM_PL_MASK_MEM);
 if (unlikely(!pos))
  return -EINVAL;

 *mem_type = pos - 1;
 return 0;
}
