
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 hgsmi_hash_end(u32 hash)
{
 hash += (hash << 3);
 hash ^= (hash >> 11);
 hash += (hash << 15);

 return hash;
}
