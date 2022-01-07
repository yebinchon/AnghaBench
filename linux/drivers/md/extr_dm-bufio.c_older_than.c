
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {scalar_t__ last_accessed; } ;


 int jiffies ;
 int time_after_eq (int ,scalar_t__) ;

__attribute__((used)) static bool older_than(struct dm_buffer *b, unsigned long age_hz)
{
 return time_after_eq(jiffies, b->last_accessed + age_hz);
}
