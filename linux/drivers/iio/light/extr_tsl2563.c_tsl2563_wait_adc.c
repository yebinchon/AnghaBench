
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsl2563_chip {TYPE_1__* gainlevel; } ;
struct TYPE_2__ {int gaintime; } ;




 int TSL2563_TIMING_MASK ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int schedule_timeout_interruptible (scalar_t__) ;

__attribute__((used)) static void tsl2563_wait_adc(struct tsl2563_chip *chip)
{
 unsigned int delay;

 switch (chip->gainlevel->gaintime & TSL2563_TIMING_MASK) {
 case 128:
  delay = 14;
  break;
 case 129:
  delay = 101;
  break;
 default:
  delay = 402;
 }




 schedule_timeout_interruptible(msecs_to_jiffies(delay) + 2);
}
