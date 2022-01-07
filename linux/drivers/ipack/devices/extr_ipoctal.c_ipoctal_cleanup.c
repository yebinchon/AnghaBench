
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; struct ipoctal_channel* driver_data; } ;
struct ipoctal_channel {int dummy; } ;
struct ipoctal {int dev; } ;


 struct ipoctal* chan_to_ipoctal (struct ipoctal_channel*,int ) ;
 int ipack_put_carrier (int ) ;

__attribute__((used)) static void ipoctal_cleanup(struct tty_struct *tty)
{
 struct ipoctal_channel *channel = tty->driver_data;
 struct ipoctal *ipoctal = chan_to_ipoctal(channel, tty->index);


 ipack_put_carrier(ipoctal->dev);
}
