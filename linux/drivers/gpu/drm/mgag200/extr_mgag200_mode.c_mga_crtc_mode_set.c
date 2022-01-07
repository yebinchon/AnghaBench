
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mga_device {int* bpp_shifts; int type; int unique_rev_id; int mode; int has_sdram; } ;
struct drm_framebuffer {int* pitches; TYPE_2__* format; } ;
struct drm_display_mode {int flags; int hdisplay; int hsync_start; int hsync_end; int htotal; int vdisplay; int vsync_start; int vsync_end; int vtotal; int clock; } ;
struct drm_device {int pdev; struct mga_device* dev_private; } ;
struct drm_crtc {TYPE_1__* primary; struct drm_device* dev; } ;
typedef int dacvalue ;
struct TYPE_4__ {int* cpp; int depth; } ;
struct TYPE_3__ {struct drm_framebuffer* fb; } ;


 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 scalar_t__ IS_G200_SE (struct mga_device*) ;
 size_t MGA1064_MISC_CTL ;
 unsigned char MGA1064_MISC_CTL_DAC_EN ;
 unsigned char MGA1064_MISC_CTL_DAC_RAM_CS ;
 unsigned char MGA1064_MISC_CTL_VGA8 ;
 size_t MGA1064_MUL_CTL ;
 unsigned char MGA1064_MUL_CTL_15bits ;
 unsigned char MGA1064_MUL_CTL_16bits ;
 unsigned char MGA1064_MUL_CTL_24bits ;
 unsigned char MGA1064_MUL_CTL_32_24bits ;
 unsigned char MGA1064_MUL_CTL_8bits ;
 size_t MGA1064_PIX_CLK_CTL ;
 unsigned char MGA1064_PIX_CLK_CTL_SEL_PLL ;
 size_t MGA1064_VREF_CTL ;
 int MGAREG_CRTCEXT_DATA ;
 int MGAREG_CRTCEXT_INDEX ;
 int MGAREG_MEMCTL ;
 int MGAREG_SEQ_DATA ;
 int MGAREG_SEQ_INDEX ;
 int MGA_MISC_OUT ;
 int PCI_MGA_OPTION ;
 int PCI_MGA_OPTION2 ;
 int RREG32 (int ) ;
 int RREG8 (int ) ;
 int WREG32 (int ,int) ;
 int WREG8 (int ,int) ;
 int WREG_CRT (int,int) ;
 int WREG_DAC (int,unsigned char) ;
 int WREG_ECRT (int,unsigned char) ;
 int WREG_GFX (int,int) ;
 int WREG_SEQ (int,int) ;
 int memcpy (int *,struct drm_display_mode*,int) ;
 int mga_crtc_do_set_base (struct drm_crtc*,struct drm_framebuffer*,int,int,int ) ;
 int mga_crtc_set_plls (struct mga_device*,int) ;
 int pci_write_config_dword (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int mga_crtc_mode_set(struct drm_crtc *crtc,
    struct drm_display_mode *mode,
    struct drm_display_mode *adjusted_mode,
    int x, int y, struct drm_framebuffer *old_fb)
{
 struct drm_device *dev = crtc->dev;
 struct mga_device *mdev = dev->dev_private;
 const struct drm_framebuffer *fb = crtc->primary->fb;
 int hdisplay, hsyncstart, hsyncend, htotal;
 int vdisplay, vsyncstart, vsyncend, vtotal;
 int pitch;
 int option = 0, option2 = 0;
 int i;
 unsigned char misc = 0;
 unsigned char ext_vga[6];
 u8 bppshift;

 static unsigned char dacvalue[] = {
                     0, 0, 0, 0, 0, 0, 0x00, 0,
                     0, 0, 0, 0, 0, 0, 0, 0,
                     0, 0, 0, 0, 0, 0, 0, 0,
                  0x00, 0, 0xC9, 0xFF, 0xBF, 0x20, 0x1F, 0x20,
                  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                  0x00, 0x00, 0x00, 0x00, 0, 0, 0, 0x40,
                  0x00, 0xB0, 0x00, 0xC2, 0x34, 0x14, 0x02, 0x83,
                  0x00, 0x93, 0x00, 0x77, 0x00, 0x00, 0x00, 0x3A,
                     0, 0, 0, 0, 0, 0, 0, 0,
                     0, 0, 0, 0, 0, 0, 0, 0
 };

 bppshift = mdev->bpp_shifts[fb->format->cpp[0] - 1];

 switch (mdev->type) {
 case 130:
 case 129:
  dacvalue[MGA1064_VREF_CTL] = 0x03;
  dacvalue[MGA1064_PIX_CLK_CTL] = MGA1064_PIX_CLK_CTL_SEL_PLL;
  dacvalue[MGA1064_MISC_CTL] = MGA1064_MISC_CTL_DAC_EN |
          MGA1064_MISC_CTL_VGA8 |
          MGA1064_MISC_CTL_DAC_RAM_CS;
  if (mdev->has_sdram)
   option = 0x40049120;
  else
   option = 0x4004d120;
  option2 = 0x00008000;
  break;
 case 128:
 case 131:
  dacvalue[MGA1064_VREF_CTL] = 0x07;
  option = 0x41049120;
  option2 = 0x0000b000;
  break;
 case 132:
  dacvalue[MGA1064_PIX_CLK_CTL] = MGA1064_PIX_CLK_CTL_SEL_PLL;
  dacvalue[MGA1064_MISC_CTL] = MGA1064_MISC_CTL_VGA8 |
          MGA1064_MISC_CTL_DAC_RAM_CS;
  option = 0x00000120;
  option2 = 0x0000b000;
  break;
 case 135:
 case 134:
  dacvalue[MGA1064_MISC_CTL] = MGA1064_MISC_CTL_VGA8 |
          MGA1064_MISC_CTL_DAC_RAM_CS;
  option = 0x00000120;
  option2 = 0x0000b000;
  break;
 case 133:
  break;
 }

 switch (fb->format->cpp[0] * 8) {
 case 8:
  dacvalue[MGA1064_MUL_CTL] = MGA1064_MUL_CTL_8bits;
  break;
 case 16:
  if (fb->format->depth == 15)
   dacvalue[MGA1064_MUL_CTL] = MGA1064_MUL_CTL_15bits;
  else
   dacvalue[MGA1064_MUL_CTL] = MGA1064_MUL_CTL_16bits;
  break;
 case 24:
  dacvalue[MGA1064_MUL_CTL] = MGA1064_MUL_CTL_24bits;
  break;
 case 32:
  dacvalue[MGA1064_MUL_CTL] = MGA1064_MUL_CTL_32_24bits;
  break;
 }

 if (mode->flags & DRM_MODE_FLAG_NHSYNC)
  misc |= 0x40;
 if (mode->flags & DRM_MODE_FLAG_NVSYNC)
  misc |= 0x80;


 for (i = 0; i < sizeof(dacvalue); i++) {
  if ((i <= 0x17) ||
      (i == 0x1b) ||
      (i == 0x1c) ||
      ((i >= 0x1f) && (i <= 0x29)) ||
      ((i >= 0x30) && (i <= 0x37)))
   continue;
  if (IS_G200_SE(mdev) &&
      ((i == 0x2c) || (i == 0x2d) || (i == 0x2e)))
   continue;
  if ((mdev->type == 132 ||
      mdev->type == 128 ||
      mdev->type == 135 ||
      mdev->type == 131 ||
      mdev->type == 134) &&
      (i >= 0x44) && (i <= 0x4e))
   continue;

  WREG_DAC(i, dacvalue[i]);
 }

 if (mdev->type == 133)
  WREG_DAC(0x90, 0);

 if (option)
  pci_write_config_dword(dev->pdev, PCI_MGA_OPTION, option);
 if (option2)
  pci_write_config_dword(dev->pdev, PCI_MGA_OPTION2, option2);

 WREG_SEQ(2, 0xf);
 WREG_SEQ(3, 0);
 WREG_SEQ(4, 0xe);

 pitch = fb->pitches[0] / fb->format->cpp[0];
 if (fb->format->cpp[0] * 8 == 24)
  pitch = (pitch * 3) >> (4 - bppshift);
 else
  pitch = pitch >> (4 - bppshift);

 hdisplay = mode->hdisplay / 8 - 1;
 hsyncstart = mode->hsync_start / 8 - 1;
 hsyncend = mode->hsync_end / 8 - 1;
 htotal = mode->htotal / 8 - 1;


 if ((htotal & 0x07) == 0x06 || (htotal & 0x07) == 0x04)
  htotal++;

 vdisplay = mode->vdisplay - 1;
 vsyncstart = mode->vsync_start - 1;
 vsyncend = mode->vsync_end - 1;
 vtotal = mode->vtotal - 2;

 WREG_GFX(0, 0);
 WREG_GFX(1, 0);
 WREG_GFX(2, 0);
 WREG_GFX(3, 0);
 WREG_GFX(4, 0);
 WREG_GFX(5, 0x40);
 WREG_GFX(6, 0x5);
 WREG_GFX(7, 0xf);
 WREG_GFX(8, 0xf);

 WREG_CRT(0, htotal - 4);
 WREG_CRT(1, hdisplay);
 WREG_CRT(2, hdisplay);
 WREG_CRT(3, (htotal & 0x1F) | 0x80);
 WREG_CRT(4, hsyncstart);
 WREG_CRT(5, ((htotal & 0x20) << 2) | (hsyncend & 0x1F));
 WREG_CRT(6, vtotal & 0xFF);
 WREG_CRT(7, ((vtotal & 0x100) >> 8) |
   ((vdisplay & 0x100) >> 7) |
   ((vsyncstart & 0x100) >> 6) |
   ((vdisplay & 0x100) >> 5) |
   ((vdisplay & 0x100) >> 4) |
   ((vtotal & 0x200) >> 4)|
   ((vdisplay & 0x200) >> 3) |
   ((vsyncstart & 0x200) >> 2));
 WREG_CRT(9, ((vdisplay & 0x200) >> 4) |
   ((vdisplay & 0x200) >> 3));
 WREG_CRT(10, 0);
 WREG_CRT(11, 0);
 WREG_CRT(12, 0);
 WREG_CRT(13, 0);
 WREG_CRT(14, 0);
 WREG_CRT(15, 0);
 WREG_CRT(16, vsyncstart & 0xFF);
 WREG_CRT(17, (vsyncend & 0x0F) | 0x20);
 WREG_CRT(18, vdisplay & 0xFF);
 WREG_CRT(19, pitch & 0xFF);
 WREG_CRT(20, 0);
 WREG_CRT(21, vdisplay & 0xFF);
 WREG_CRT(22, (vtotal + 1) & 0xFF);
 WREG_CRT(23, 0xc3);
 WREG_CRT(24, vdisplay & 0xFF);

 ext_vga[0] = 0;
 ext_vga[5] = 0;



 ext_vga[0] |= (pitch & 0x300) >> 4;
 ext_vga[1] = (((htotal - 4) & 0x100) >> 8) |
  ((hdisplay & 0x100) >> 7) |
  ((hsyncstart & 0x100) >> 6) |
  (htotal & 0x40);
 ext_vga[2] = ((vtotal & 0xc00) >> 10) |
  ((vdisplay & 0x400) >> 8) |
  ((vdisplay & 0xc00) >> 7) |
  ((vsyncstart & 0xc00) >> 5) |
  ((vdisplay & 0x400) >> 3);
 if (fb->format->cpp[0] * 8 == 24)
  ext_vga[3] = (((1 << bppshift) * 3) - 1) | 0x80;
 else
  ext_vga[3] = ((1 << bppshift) - 1) | 0x80;
 ext_vga[4] = 0;
 if (mdev->type == 128 || mdev->type == 131)
  ext_vga[1] |= 0x88;


 misc = 0x2d;
 WREG8(MGA_MISC_OUT, misc);

 mga_crtc_set_plls(mdev, mode->clock);

 for (i = 0; i < 6; i++) {
  WREG_ECRT(i, ext_vga[i]);
 }

 if (mdev->type == 133)
  WREG_ECRT(0x24, 0x5);

 if (mdev->type == 131)
  WREG_ECRT(0x34, 0x5);

 if (mdev->type == 132) {
  WREG_ECRT(6, 0);
 }

 WREG_ECRT(0, ext_vga[0]);

 misc = 0x2d;

 WREG8(MGA_MISC_OUT, misc);

 if (adjusted_mode)
  memcpy(&mdev->mode, mode, sizeof(struct drm_display_mode));

 mga_crtc_do_set_base(crtc, old_fb, x, y, 0);


 if (mdev->type == 133) {
  u32 mem_ctl = RREG32(MGAREG_MEMCTL);
  u8 seq1;


  WREG8(MGAREG_SEQ_INDEX, 0x01);
  seq1 = RREG8(MGAREG_SEQ_DATA) | 0x20;
  WREG8(MGAREG_SEQ_DATA, seq1);

  WREG32(MGAREG_MEMCTL, mem_ctl | 0x00200000);
  udelay(1000);
  WREG32(MGAREG_MEMCTL, mem_ctl & ~0x00200000);

  WREG8(MGAREG_SEQ_DATA, seq1 & ~0x20);
 }


 if (IS_G200_SE(mdev)) {
  if (mdev->unique_rev_id >= 0x04) {
   WREG8(MGAREG_CRTCEXT_INDEX, 0x06);
   WREG8(MGAREG_CRTCEXT_DATA, 0);
  } else if (mdev->unique_rev_id >= 0x02) {
   u8 hi_pri_lvl;
   u32 bpp;
   u32 mb;

   if (fb->format->cpp[0] * 8 > 16)
    bpp = 32;
   else if (fb->format->cpp[0] * 8 > 8)
    bpp = 16;
   else
    bpp = 8;

   mb = (mode->clock * bpp) / 1000;
   if (mb > 3100)
    hi_pri_lvl = 0;
   else if (mb > 2600)
    hi_pri_lvl = 1;
   else if (mb > 1900)
    hi_pri_lvl = 2;
   else if (mb > 1160)
    hi_pri_lvl = 3;
   else if (mb > 440)
    hi_pri_lvl = 4;
   else
    hi_pri_lvl = 5;

   WREG8(MGAREG_CRTCEXT_INDEX, 0x06);
   WREG8(MGAREG_CRTCEXT_DATA, hi_pri_lvl);
  } else {
   WREG8(MGAREG_CRTCEXT_INDEX, 0x06);
   if (mdev->unique_rev_id >= 0x01)
    WREG8(MGAREG_CRTCEXT_DATA, 0x03);
   else
    WREG8(MGAREG_CRTCEXT_DATA, 0x04);
  }
 }
 return 0;
}
