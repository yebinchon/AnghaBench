
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct bochs_device {int xres; int yres; int bpp; int stride; int yres_virtual; int fb_size; } ;


 int DRM_DEBUG_DRIVER (char*,int,int,int,int) ;
 int VBE_DISPI_ENABLED ;
 int VBE_DISPI_INDEX_BANK ;
 int VBE_DISPI_INDEX_BPP ;
 int VBE_DISPI_INDEX_ENABLE ;
 int VBE_DISPI_INDEX_VIRT_HEIGHT ;
 int VBE_DISPI_INDEX_VIRT_WIDTH ;
 int VBE_DISPI_INDEX_XRES ;
 int VBE_DISPI_INDEX_X_OFFSET ;
 int VBE_DISPI_INDEX_YRES ;
 int VBE_DISPI_INDEX_Y_OFFSET ;
 int VBE_DISPI_LFB_ENABLED ;
 int bochs_dispi_write (struct bochs_device*,int ,int) ;
 int bochs_vga_writeb (struct bochs_device*,int,int) ;

void bochs_hw_setmode(struct bochs_device *bochs,
        struct drm_display_mode *mode)
{
 bochs->xres = mode->hdisplay;
 bochs->yres = mode->vdisplay;
 bochs->bpp = 32;
 bochs->stride = mode->hdisplay * (bochs->bpp / 8);
 bochs->yres_virtual = bochs->fb_size / bochs->stride;

 DRM_DEBUG_DRIVER("%dx%d @ %d bpp, vy %d\n",
    bochs->xres, bochs->yres, bochs->bpp,
    bochs->yres_virtual);

 bochs_vga_writeb(bochs, 0x3c0, 0x20);

 bochs_dispi_write(bochs, VBE_DISPI_INDEX_ENABLE, 0);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_BPP, bochs->bpp);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_XRES, bochs->xres);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_YRES, bochs->yres);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_BANK, 0);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_VIRT_WIDTH, bochs->xres);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_VIRT_HEIGHT,
     bochs->yres_virtual);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_X_OFFSET, 0);
 bochs_dispi_write(bochs, VBE_DISPI_INDEX_Y_OFFSET, 0);

 bochs_dispi_write(bochs, VBE_DISPI_INDEX_ENABLE,
     VBE_DISPI_ENABLED | VBE_DISPI_LFB_ENABLED);
}
