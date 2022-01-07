
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int * timestamp; } ;
typedef int ktime_t ;


 size_t INPUT_CLK_BOOT ;
 size_t INPUT_CLK_MONO ;
 size_t INPUT_CLK_REAL ;
 int TK_OFFS_BOOT ;
 int ktime_mono_to_any (int ,int ) ;
 int ktime_mono_to_real (int ) ;

void input_set_timestamp(struct input_dev *dev, ktime_t timestamp)
{
 dev->timestamp[INPUT_CLK_MONO] = timestamp;
 dev->timestamp[INPUT_CLK_REAL] = ktime_mono_to_real(timestamp);
 dev->timestamp[INPUT_CLK_BOOT] = ktime_mono_to_any(timestamp,
          TK_OFFS_BOOT);
}
