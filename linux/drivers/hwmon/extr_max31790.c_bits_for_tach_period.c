
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 bits_for_tach_period(int rpm)
{
 u8 bits;

 if (rpm < 500)
  bits = 0x0;
 else if (rpm < 1000)
  bits = 0x1;
 else if (rpm < 2000)
  bits = 0x2;
 else if (rpm < 4000)
  bits = 0x3;
 else if (rpm < 8000)
  bits = 0x4;
 else
  bits = 0x5;

 return bits;
}
