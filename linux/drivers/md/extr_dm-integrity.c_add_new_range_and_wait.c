
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_range {int dummy; } ;
struct dm_integrity_c {int dummy; } ;


 int add_new_range (struct dm_integrity_c*,struct dm_integrity_range*,int) ;
 scalar_t__ unlikely (int) ;
 int wait_and_add_new_range (struct dm_integrity_c*,struct dm_integrity_range*) ;

__attribute__((used)) static void add_new_range_and_wait(struct dm_integrity_c *ic, struct dm_integrity_range *new_range)
{
 if (unlikely(!add_new_range(ic, new_range, 1)))
  wait_and_add_new_range(ic, new_range);
}
