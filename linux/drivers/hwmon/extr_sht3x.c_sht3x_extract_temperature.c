
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static int sht3x_extract_temperature(u16 raw)
{





 return ((21875 * (int)raw) >> 13) - 45000;
}
