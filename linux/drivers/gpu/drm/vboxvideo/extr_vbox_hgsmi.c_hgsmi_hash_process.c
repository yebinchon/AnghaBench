
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 hgsmi_hash_process(u32 hash, const u8 *data, int size)
{
 while (size--) {
  hash += *data++;
  hash += (hash << 10);
  hash ^= (hash >> 6);
 }

 return hash;
}
