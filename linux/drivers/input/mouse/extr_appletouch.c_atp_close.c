
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct atp {int open; int work; int urb; } ;


 int cancel_work_sync (int *) ;
 struct atp* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void atp_close(struct input_dev *input)
{
 struct atp *dev = input_get_drvdata(input);

 usb_kill_urb(dev->urb);
 cancel_work_sync(&dev->work);
 dev->open = 0;
}
