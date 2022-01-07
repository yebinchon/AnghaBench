
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int reg_to_temp(u16 reg)
{
 return (reg * 625) / 10 - 64000;
}
