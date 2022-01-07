
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ipoctal_channel* driver_data; int index; int dev; } ;
struct ipoctal_channel {int tty_port; } ;
struct ipoctal {int dev; } ;
struct file {int dummy; } ;


 int EBUSY ;
 struct ipoctal* chan_to_ipoctal (struct ipoctal_channel*,int ) ;
 struct ipoctal_channel* dev_get_drvdata (int ) ;
 int ipack_get_carrier (int ) ;
 int ipack_put_carrier (int ) ;
 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int ipoctal_open(struct tty_struct *tty, struct file *file)
{
 struct ipoctal_channel *channel = dev_get_drvdata(tty->dev);
 struct ipoctal *ipoctal = chan_to_ipoctal(channel, tty->index);
 int err;

 tty->driver_data = channel;

 if (!ipack_get_carrier(ipoctal->dev))
  return -EBUSY;

 err = tty_port_open(&channel->tty_port, tty, file);
 if (err)
  ipack_put_carrier(ipoctal->dev);

 return err;
}
