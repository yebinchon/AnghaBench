
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct dc_bios {scalar_t__ bios_size; int * bios; } ;



uint8_t *bios_get_image(struct dc_bios *bp,
 uint32_t offset,
 uint32_t size)
{
 if (bp->bios && offset + size < bp->bios_size)
  return bp->bios + offset;
 else
  return ((void*)0);
}
