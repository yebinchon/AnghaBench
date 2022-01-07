
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {int dummy; } ;
struct mapped_device {struct hd_geometry geometry; } ;



int dm_get_geometry(struct mapped_device *md, struct hd_geometry *geo)
{
 *geo = md->geometry;

 return 0;
}
