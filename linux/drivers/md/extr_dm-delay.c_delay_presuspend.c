
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct delay_c* private; } ;
struct delay_c {int delay_timer; int may_delay; } ;


 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 int flush_bios (int ) ;
 int flush_delayed_bios (struct delay_c*,int) ;

__attribute__((used)) static void delay_presuspend(struct dm_target *ti)
{
 struct delay_c *dc = ti->private;

 atomic_set(&dc->may_delay, 0);
 del_timer_sync(&dc->delay_timer);
 flush_bios(flush_delayed_bios(dc, 1));
}
