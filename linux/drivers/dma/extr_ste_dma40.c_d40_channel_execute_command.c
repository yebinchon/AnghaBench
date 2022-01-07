
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_chan {int dummy; } ;
typedef enum d40_command { ____Placeholder_d40_command } d40_command ;


 int __d40_execute_command_log (struct d40_chan*,int) ;
 int __d40_execute_command_phy (struct d40_chan*,int) ;
 scalar_t__ chan_is_logical (struct d40_chan*) ;

__attribute__((used)) static int d40_channel_execute_command(struct d40_chan *d40c,
           enum d40_command command)
{
 if (chan_is_logical(d40c))
  return __d40_execute_command_log(d40c, command);
 else
  return __d40_execute_command_phy(d40c, command);
}
