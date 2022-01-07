
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_closest (unsigned long,int const*,unsigned int) ;

__attribute__((used)) static int FREQ_TO_REG(const int *map,
         unsigned int map_size, unsigned long freq)
{
 return find_closest(freq, map, map_size);
}
