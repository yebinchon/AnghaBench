
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidraw {size_t minor; int hid; scalar_t__ exist; scalar_t__ open; int wait; } ;


 int MKDEV (int ,size_t) ;
 int PM_HINT_NORMAL ;
 int device_destroy (int ,int ) ;
 int hid_hw_close (int ) ;
 int hid_hw_power (int ,int ) ;
 int hidraw_class ;
 int hidraw_major ;
 int ** hidraw_table ;
 int kfree (struct hidraw*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void drop_ref(struct hidraw *hidraw, int exists_bit)
{
 if (exists_bit) {
  hidraw->exist = 0;
  if (hidraw->open) {
   hid_hw_close(hidraw->hid);
   wake_up_interruptible(&hidraw->wait);
  }
  device_destroy(hidraw_class,
          MKDEV(hidraw_major, hidraw->minor));
 } else {
  --hidraw->open;
 }
 if (!hidraw->open) {
  if (!hidraw->exist) {
   hidraw_table[hidraw->minor] = ((void*)0);
   kfree(hidraw);
  } else {

   hid_hw_close(hidraw->hid);
   hid_hw_power(hidraw->hid, PM_HINT_NORMAL);
  }
 }
}
