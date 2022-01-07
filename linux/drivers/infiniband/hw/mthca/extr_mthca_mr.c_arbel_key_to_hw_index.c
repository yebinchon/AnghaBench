
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 arbel_key_to_hw_index(u32 key)
{
 return (key << 24) | (key >> 8);
}
