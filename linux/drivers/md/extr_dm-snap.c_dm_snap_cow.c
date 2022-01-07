
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {struct dm_dev* cow; } ;
struct dm_dev {int dummy; } ;



struct dm_dev *dm_snap_cow(struct dm_snapshot *s)
{
 return s->cow;
}
