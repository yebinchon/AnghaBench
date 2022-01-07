
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tick_broadcast_disable () ;
 int tick_broadcast_enable () ;

__attribute__((used)) static void __setup_broadcast_timer(bool on)
{
 if (on)
  tick_broadcast_enable();
 else
  tick_broadcast_disable();
}
