
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct bochs_device {int stride; int bpp; } ;


 int DRM_DEBUG_DRIVER (char*,int,int,scalar_t__,unsigned long,unsigned int,unsigned int) ;
 int VBE_DISPI_INDEX_VIRT_WIDTH ;
 int VBE_DISPI_INDEX_X_OFFSET ;
 int VBE_DISPI_INDEX_Y_OFFSET ;
 int bochs_dispi_write (struct bochs_device*,int ,unsigned int) ;

void bochs_hw_setbase(struct bochs_device *bochs,
        int x, int y, int stride, u64 addr)
{
 unsigned long offset;
 unsigned int vx, vy, vwidth;

 bochs->stride = stride;
 offset = (unsigned long)addr +
  y * bochs->stride +
  x * (bochs->bpp / 8);
 vy = offset / bochs->stride;
 vx = (offset % bochs->stride) * 8 / bochs->bpp;
 vwidth = stride * 8 / bochs->bpp;

 DRM_DEBUG_DRIVER("x %d, y %d, addr %llx -> offset %lx, vx %d, vy %d\n",
    x, y, addr, offset, vx, vy);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_VIRT_WIDTH, vwidth);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_X_OFFSET, vx);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_Y_OFFSET, vy);
}
