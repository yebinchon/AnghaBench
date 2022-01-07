
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static long ak8963_09911_raw_to_gauss(u16 data)
{
 return (((long)data + 128) * 6000) / 256;
}
