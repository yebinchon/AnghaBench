
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;



__attribute__((used)) static u32 sht3x_extract_humidity(u16 raw)
{





 return (12500 * (u32)raw) >> 13;
}
