
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pixels_current; } ;
struct mga_device {TYPE_1__ cursor; } ;


 int MGA_CURPOSXH ;
 int MGA_CURPOSXL ;
 int WREG8 (int ,int ) ;
 int drm_gem_vram_unpin (int *) ;

__attribute__((used)) static void mga_hide_cursor(struct mga_device *mdev)
{
 WREG8(MGA_CURPOSXL, 0);
 WREG8(MGA_CURPOSXH, 0);
 if (mdev->cursor.pixels_current)
  drm_gem_vram_unpin(mdev->cursor.pixels_current);
 mdev->cursor.pixels_current = ((void*)0);
}
