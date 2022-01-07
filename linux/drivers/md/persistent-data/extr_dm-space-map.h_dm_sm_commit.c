
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int (* commit ) (struct dm_space_map*) ;} ;


 int stub1 (struct dm_space_map*) ;

__attribute__((used)) static inline int dm_sm_commit(struct dm_space_map *sm)
{
 return sm->commit(sm);
}
