
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static unsigned int elan_convert_resolution(u8 val)
{







 return ((int)(char)val * 10 + 790) * 10 / 254;
}
