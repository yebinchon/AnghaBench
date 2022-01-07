
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int elantech_convert_res(unsigned int val)
{
 return (val * 10 + 790) * 10 / 254;
}
