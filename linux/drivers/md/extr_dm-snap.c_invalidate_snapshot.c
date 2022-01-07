
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int lock; } ;


 int __invalidate_snapshot (struct dm_snapshot*,int) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void invalidate_snapshot(struct dm_snapshot *s, int err)
{
 down_write(&s->lock);
 __invalidate_snapshot(s, err);
 up_write(&s->lock);
}
