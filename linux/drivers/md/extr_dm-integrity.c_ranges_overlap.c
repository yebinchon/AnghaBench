
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_range {scalar_t__ logical_sector; scalar_t__ n_sectors; } ;



__attribute__((used)) static bool ranges_overlap(struct dm_integrity_range *range1, struct dm_integrity_range *range2)
{
 return range1->logical_sector < range2->logical_sector + range2->n_sectors &&
        range1->logical_sector + range1->n_sectors > range2->logical_sector;
}
