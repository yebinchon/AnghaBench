
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_space_map {int (* set_count ) (struct dm_space_map*,int ,int ) ;} ;
typedef int dm_block_t ;


 int stub1 (struct dm_space_map*,int ,int ) ;

__attribute__((used)) static inline int dm_sm_set_count(struct dm_space_map *sm, dm_block_t b,
      uint32_t count)
{
 return sm->set_count(sm, b, count);
}
