
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int (* copy_root ) (struct dm_space_map*,void*,size_t) ;} ;


 int stub1 (struct dm_space_map*,void*,size_t) ;

__attribute__((used)) static inline int dm_sm_copy_root(struct dm_space_map *sm, void *copy_to_here_le, size_t len)
{
 return sm->copy_root(sm, copy_to_here_le, len);
}
