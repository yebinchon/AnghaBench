
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int temp_from_reg(int val)
{
 return (val & 0x80 ? val-0x100 : val) * 1000;
}
