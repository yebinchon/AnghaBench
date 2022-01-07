
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {scalar_t__ size; int * data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 int memcpy (int *,int *,scalar_t__) ;

int
nvbios_extend(struct nvkm_bios *bios, u32 length)
{
 if (bios->size < length) {
  u8 *prev = bios->data;
  if (!(bios->data = kmalloc(length, GFP_KERNEL))) {
   bios->data = prev;
   return -ENOMEM;
  }
  memcpy(bios->data, prev, bios->size);
  bios->size = length;
  kfree(prev);
  return 1;
 }
 return 0;
}
