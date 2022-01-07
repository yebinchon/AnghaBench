
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct wacom {int lock; } ;
typedef int ssize_t ;


 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wacom_led_control (struct wacom*) ;

__attribute__((used)) static ssize_t wacom_luminance_store(struct wacom *wacom, u8 *dest,
         const char *buf, size_t count)
{
 unsigned int value;
 int err;

 err = kstrtouint(buf, 10, &value);
 if (err)
  return err;

 mutex_lock(&wacom->lock);

 *dest = value & 0x7f;
 err = wacom_led_control(wacom);

 mutex_unlock(&wacom->lock);

 return err < 0 ? err : count;
}
