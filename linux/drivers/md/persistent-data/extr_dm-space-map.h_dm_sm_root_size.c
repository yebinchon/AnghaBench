
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int (* root_size ) (struct dm_space_map*,size_t*) ;} ;


 int stub1 (struct dm_space_map*,size_t*) ;

__attribute__((used)) static inline int dm_sm_root_size(struct dm_space_map *sm, size_t *result)
{
 return sm->root_size(sm, result);
}
