
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapleq {TYPE_1__* recvbuf; struct maple_device* dev; } ;
struct maple_device {unsigned long function; } ;
struct dc_kbd {int new; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 int dc_scan_kbd (struct dc_kbd*) ;
 scalar_t__ likely (int ) ;
 struct dc_kbd* maple_get_drvdata (struct maple_device*) ;
 int maple_keyb_mutex ;
 int memcpy (int ,unsigned long*,int) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dc_kbd_callback(struct mapleq *mq)
{
 struct maple_device *mapledev = mq->dev;
 struct dc_kbd *kbd = maple_get_drvdata(mapledev);
 unsigned long *buf = (unsigned long *)(mq->recvbuf->buf);





 if (likely(mutex_trylock(&maple_keyb_mutex))) {

  if (buf[1] == mapledev->function) {
   memcpy(kbd->new, buf + 2, 8);
   dc_scan_kbd(kbd);
  }

  mutex_unlock(&maple_keyb_mutex);
 }
}
