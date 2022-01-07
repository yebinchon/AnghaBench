
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ipoctal_channel* driver_data; } ;
struct ipoctal_channel {int tty_port; } ;
struct file {int dummy; } ;


 int ipoctal_free_channel (struct ipoctal_channel*) ;
 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void ipoctal_close(struct tty_struct *tty, struct file *filp)
{
 struct ipoctal_channel *channel = tty->driver_data;

 tty_port_close(&channel->tty_port, tty, filp);
 ipoctal_free_channel(channel);
}
