
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;



__attribute__((used)) static inline u64 encode_rcv_header_entry_size(u16 size)
{

 if (size == 2)
  return 1;
 if (size == 16)
  return 2;
 else if (size == 32)
  return 4;
 return 0;
}
