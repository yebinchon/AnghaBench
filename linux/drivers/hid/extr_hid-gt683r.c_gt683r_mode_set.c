
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gt683r_led {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GT683R_BUFFER_SIZE ;
 int gt683r_led_snd_msg (struct gt683r_led*,int*) ;
 int kfree (int*) ;
 int* kzalloc (int ,int ) ;

__attribute__((used)) static int gt683r_mode_set(struct gt683r_led *led, u8 mode)
{
 int ret;
 u8 *buffer;

 buffer = kzalloc(GT683R_BUFFER_SIZE, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 buffer[0] = 0x01;
 buffer[1] = 0x02;
 buffer[2] = 0x20;
 buffer[3] = mode;
 buffer[4] = 0x01;
 ret = gt683r_led_snd_msg(led, buffer);

 kfree(buffer);
 return ret;
}
