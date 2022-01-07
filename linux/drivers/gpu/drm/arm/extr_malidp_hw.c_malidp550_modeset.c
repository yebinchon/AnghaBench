
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct videomode {int flags; int vactive; int hactive; int vsync_len; int hsync_len; int vback_porch; int vfront_porch; int hback_porch; int hfront_porch; } ;
struct malidp_hw_device {int output_color_depth; TYPE_2__* hw; } ;
struct TYPE_3__ {scalar_t__ out_depth_base; } ;
struct TYPE_4__ {TYPE_1__ map; } ;


 int DISPLAY_FLAGS_HSYNC_HIGH ;
 int DISPLAY_FLAGS_INTERLACED ;
 int DISPLAY_FLAGS_VSYNC_HIGH ;
 scalar_t__ MALIDP550_DE_BGND_COLOR ;
 scalar_t__ MALIDP550_DE_CONTROL ;
 int MALIDP550_DE_V_FRONTPORCH (int ) ;
 int MALIDP550_HSYNCPOL ;
 scalar_t__ MALIDP550_TIMINGS_BASE ;
 int MALIDP550_VSYNCPOL ;
 int MALIDP_BGND_COLOR_B ;
 int MALIDP_BGND_COLOR_G ;
 int MALIDP_BGND_COLOR_R ;
 int MALIDP_DE_DEFAULT_PREFETCH_START ;
 int MALIDP_DE_DISPLAY_FUNC ;
 scalar_t__ MALIDP_DE_HV_ACTIVE ;
 int MALIDP_DE_H_ACTIVE (int ) ;
 int MALIDP_DE_H_BACKPORCH (int ) ;
 int MALIDP_DE_H_FRONTPORCH (int ) ;
 int MALIDP_DE_H_SYNCWIDTH (int ) ;
 scalar_t__ MALIDP_DE_H_TIMINGS ;
 scalar_t__ MALIDP_DE_SYNC_WIDTH ;
 int MALIDP_DE_V_ACTIVE (int ) ;
 int MALIDP_DE_V_BACKPORCH (int ) ;
 int MALIDP_DE_V_SYNCWIDTH (int ) ;
 scalar_t__ MALIDP_DE_V_TIMINGS ;
 int MALIDP_DISP_FUNC_ILACED ;
 int malidp_hw_clearbits (struct malidp_hw_device*,int ,int ) ;
 int malidp_hw_setbits (struct malidp_hw_device*,int ,int ) ;
 int malidp_hw_write (struct malidp_hw_device*,int,scalar_t__) ;

__attribute__((used)) static void malidp550_modeset(struct malidp_hw_device *hwdev, struct videomode *mode)
{
 u32 val = MALIDP_DE_DEFAULT_PREFETCH_START;

 malidp_hw_write(hwdev, hwdev->output_color_depth,
  hwdev->hw->map.out_depth_base);
 malidp_hw_write(hwdev, val, MALIDP550_DE_CONTROL);
 val = (((MALIDP_BGND_COLOR_R >> 4) & 0xff) << 16) |
       (((MALIDP_BGND_COLOR_G >> 4) & 0xff) << 8) |
       ((MALIDP_BGND_COLOR_B >> 4) & 0xff);
 malidp_hw_write(hwdev, val, MALIDP550_DE_BGND_COLOR);

 val = MALIDP_DE_H_FRONTPORCH(mode->hfront_porch) |
  MALIDP_DE_H_BACKPORCH(mode->hback_porch);
 malidp_hw_write(hwdev, val, MALIDP550_TIMINGS_BASE + MALIDP_DE_H_TIMINGS);

 val = MALIDP550_DE_V_FRONTPORCH(mode->vfront_porch) |
  MALIDP_DE_V_BACKPORCH(mode->vback_porch);
 malidp_hw_write(hwdev, val, MALIDP550_TIMINGS_BASE + MALIDP_DE_V_TIMINGS);

 val = MALIDP_DE_H_SYNCWIDTH(mode->hsync_len) |
  MALIDP_DE_V_SYNCWIDTH(mode->vsync_len);
 if (mode->flags & DISPLAY_FLAGS_HSYNC_HIGH)
  val |= MALIDP550_HSYNCPOL;
 if (mode->flags & DISPLAY_FLAGS_VSYNC_HIGH)
  val |= MALIDP550_VSYNCPOL;
 malidp_hw_write(hwdev, val, MALIDP550_TIMINGS_BASE + MALIDP_DE_SYNC_WIDTH);

 val = MALIDP_DE_H_ACTIVE(mode->hactive) | MALIDP_DE_V_ACTIVE(mode->vactive);
 malidp_hw_write(hwdev, val, MALIDP550_TIMINGS_BASE + MALIDP_DE_HV_ACTIVE);

 if (mode->flags & DISPLAY_FLAGS_INTERLACED)
  malidp_hw_setbits(hwdev, MALIDP_DISP_FUNC_ILACED, MALIDP_DE_DISPLAY_FUNC);
 else
  malidp_hw_clearbits(hwdev, MALIDP_DISP_FUNC_ILACED, MALIDP_DE_DISPLAY_FUNC);
}
