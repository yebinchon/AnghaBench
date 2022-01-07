
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {scalar_t__ heads; scalar_t__ sectors; scalar_t__ start; scalar_t__ cylinders; } ;
struct mapped_device {struct hd_geometry geometry; } ;
typedef scalar_t__ sector_t ;


 int DMWARN (char*) ;
 int EINVAL ;

int dm_set_geometry(struct mapped_device *md, struct hd_geometry *geo)
{
 sector_t sz = (sector_t)geo->cylinders * geo->heads * geo->sectors;

 if (geo->start > sz) {
  DMWARN("Start sector is beyond the geometry limits.");
  return -EINVAL;
 }

 md->geometry = *geo;

 return 0;
}
