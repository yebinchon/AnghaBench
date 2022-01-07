
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_xpad {int pad_present; int x360w_dev; int work; } ;
struct input_dev {int dummy; } ;


 struct input_dev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int schedule_work (int *) ;
 int xpad360_process_packet (struct usb_xpad*,struct input_dev*,int ,unsigned char*) ;

__attribute__((used)) static void xpad360w_process_packet(struct usb_xpad *xpad, u16 cmd, unsigned char *data)
{
 struct input_dev *dev;
 bool present;


 if (data[0] & 0x08) {
  present = (data[1] & 0x80) != 0;

  if (xpad->pad_present != present) {
   xpad->pad_present = present;
   schedule_work(&xpad->work);
  }
 }


 if (data[1] != 0x1)
  return;

 rcu_read_lock();
 dev = rcu_dereference(xpad->x360w_dev);
 if (dev)
  xpad360_process_packet(xpad, dev, cmd, &data[4]);
 rcu_read_unlock();
}
