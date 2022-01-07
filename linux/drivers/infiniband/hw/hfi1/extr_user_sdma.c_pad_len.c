
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 pad_len(u32 len)
{
 if (len & (sizeof(u32) - 1))
  len += sizeof(u32) - (len & (sizeof(u32) - 1));
 return len;
}
