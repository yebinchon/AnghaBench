
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 spum_wordalign_padlen(u32 data_size)
{
 return ((data_size + 3) & ~3) - data_size;
}
