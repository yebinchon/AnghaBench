
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_io_unit {int state; } ;
typedef enum r5l_io_unit_state { ____Placeholder_r5l_io_unit_state } r5l_io_unit_state ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static void __r5l_set_io_unit_state(struct r5l_io_unit *io,
        enum r5l_io_unit_state state)
{
 if (WARN_ON(io->state >= state))
  return;
 io->state = state;
}
