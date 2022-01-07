
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity {int ti; scalar_t__ data_start; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ dm_target_offset (int ,scalar_t__) ;

__attribute__((used)) static sector_t verity_map_sector(struct dm_verity *v, sector_t bi_sector)
{
 return v->data_start + dm_target_offset(v->ti, bi_sector);
}
