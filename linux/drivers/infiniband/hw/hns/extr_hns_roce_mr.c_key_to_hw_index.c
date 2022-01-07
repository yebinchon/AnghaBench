
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



unsigned long key_to_hw_index(u32 key)
{
 return (key << 24) | (key >> 8);
}
