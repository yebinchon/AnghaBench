
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long bcm6328_pin2shift(unsigned long pin)
{
 if (pin < 8)
  return pin + 16;
 else
  return pin - 8;
}
