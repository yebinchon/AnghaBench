
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int temp_to_reg(int val)
{
 return (val < 0 ? val+0x100*1000 : val) / 1000;
}
