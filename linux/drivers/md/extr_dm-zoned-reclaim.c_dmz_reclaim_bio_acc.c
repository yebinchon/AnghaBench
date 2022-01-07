
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {int atime; } ;


 int jiffies ;

void dmz_reclaim_bio_acc(struct dmz_reclaim *zrc)
{
 zrc->atime = jiffies;
}
