
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_integrity_c {int log2_metadata_run; int metadata_run; scalar_t__ start; scalar_t__ initial_sectors; TYPE_1__* sb; scalar_t__ meta_dev; } ;
typedef int sector_t ;
struct TYPE_2__ {int log2_interleave_sectors; } ;


 scalar_t__ likely (int) ;

__attribute__((used)) static sector_t get_data_sector(struct dm_integrity_c *ic, sector_t area, sector_t offset)
{
 sector_t result;

 if (ic->meta_dev)
  return offset;

 result = area << ic->sb->log2_interleave_sectors;
 if (likely(ic->log2_metadata_run >= 0))
  result += (area + 1) << ic->log2_metadata_run;
 else
  result += (area + 1) * ic->metadata_run;

 result += (sector_t)ic->initial_sectors + offset;
 result += ic->start;

 return result;
}
