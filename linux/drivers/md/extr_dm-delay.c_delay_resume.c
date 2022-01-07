
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct delay_c* private; } ;
struct delay_c {int may_delay; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static void delay_resume(struct dm_target *ti)
{
 struct delay_c *dc = ti->private;

 atomic_set(&dc->may_delay, 1);
}
