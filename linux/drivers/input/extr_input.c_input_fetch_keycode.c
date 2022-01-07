
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct input_dev {int keycodesize; scalar_t__ keycode; } ;



__attribute__((used)) static unsigned int input_fetch_keycode(struct input_dev *dev,
     unsigned int index)
{
 switch (dev->keycodesize) {
 case 1:
  return ((u8 *)dev->keycode)[index];

 case 2:
  return ((u16 *)dev->keycode)[index];

 default:
  return ((u32 *)dev->keycode)[index];
 }
}
