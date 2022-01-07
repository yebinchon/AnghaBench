
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int xadc_zynq_transform_alarm(unsigned int alarm)
{
 return ((alarm & 0x80) >> 4) |
  ((alarm & 0x78) << 1) |
  (alarm & 0x07);
}
