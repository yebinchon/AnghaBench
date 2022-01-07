
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long MAX6621_REG_TEMP_SHIFT ;

__attribute__((used)) static long max6621_temp_mc2reg(long val)
{
 return (val / 1000L) << MAX6621_REG_TEMP_SHIFT;
}
