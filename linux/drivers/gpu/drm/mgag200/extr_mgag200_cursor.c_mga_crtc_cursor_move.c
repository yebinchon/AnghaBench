
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mga_device {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ dev_private; } ;


 int BUG_ON (int) ;
 int MGA_CURPOSXH ;
 int MGA_CURPOSXL ;
 int MGA_CURPOSYH ;
 int MGA_CURPOSYL ;
 int WREG8 (int ,int) ;

int mga_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
{
 struct mga_device *mdev = (struct mga_device *)crtc->dev->dev_private;

 x += 64;
 y += 64;

 BUG_ON(x <= 0);
 BUG_ON(y <= 0);
 BUG_ON(x & ~0xffff);
 BUG_ON(y & ~0xffff);

 WREG8(MGA_CURPOSXL, x & 0xff);
 WREG8(MGA_CURPOSXH, (x>>8) & 0xff);

 WREG8(MGA_CURPOSYL, y & 0xff);
 WREG8(MGA_CURPOSYH, (y>>8) & 0xff);
 return 0;
}
