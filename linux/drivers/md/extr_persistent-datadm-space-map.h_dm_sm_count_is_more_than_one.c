
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int (* count_is_more_than_one ) (struct dm_space_map*,int ,int*) ;} ;
typedef int dm_block_t ;


 int stub1 (struct dm_space_map*,int ,int*) ;

__attribute__((used)) static inline int dm_sm_count_is_more_than_one(struct dm_space_map *sm,
            dm_block_t b, int *result)
{
 return sm->count_is_more_than_one(sm, b, result);
}
