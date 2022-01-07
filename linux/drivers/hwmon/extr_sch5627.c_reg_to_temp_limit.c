
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int reg_to_temp_limit(u8 reg)
{
 return (reg - 64) * 1000;
}
