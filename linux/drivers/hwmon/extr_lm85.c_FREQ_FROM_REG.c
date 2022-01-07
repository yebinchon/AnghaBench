
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;



__attribute__((used)) static int FREQ_FROM_REG(const int *map, unsigned int map_size, u8 reg)
{
 return map[reg % map_size];
}
