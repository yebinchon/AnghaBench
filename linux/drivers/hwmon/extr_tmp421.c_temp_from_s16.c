
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;



__attribute__((used)) static int temp_from_s16(s16 reg)
{

 int temp = reg & ~0xf;

 return (temp * 1000 + 128) / 256;
}
