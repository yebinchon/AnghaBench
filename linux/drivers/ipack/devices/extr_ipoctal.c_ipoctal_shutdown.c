
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ipoctal_channel* driver_data; } ;
struct ipoctal_channel {int tty_port; } ;


 int ipoctal_reset_channel (struct ipoctal_channel*) ;
 int tty_port_set_initialized (int *,int ) ;

__attribute__((used)) static void ipoctal_shutdown(struct tty_struct *tty)
{
 struct ipoctal_channel *channel = tty->driver_data;

 if (channel == ((void*)0))
  return;

 ipoctal_reset_channel(channel);
 tty_port_set_initialized(&channel->tty_port, 0);
}
