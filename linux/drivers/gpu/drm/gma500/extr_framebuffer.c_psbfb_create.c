
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct drm_framebuffer {int height; int width; } ;
struct psb_framebuffer {struct drm_framebuffer base; struct fb_info* fbdev; } ;
struct TYPE_15__ {struct drm_framebuffer* fb; struct drm_device* dev; } ;
struct psb_fbdev {TYPE_7__ psb_fb_helper; struct psb_framebuffer pfb; } ;
struct gtt_range {scalar_t__ offset; } ;
struct TYPE_14__ {int smem_len; int ywrapstep; int mmio_len; int mmio_start; scalar_t__ ypanstep; int smem_start; } ;
struct fb_info {int screen_size; TYPE_6__ fix; TYPE_4__* apertures; scalar_t__ screen_base; int * fbops; int flags; } ;
struct TYPE_13__ {scalar_t__ stolen_size; } ;
struct drm_psb_private {TYPE_5__ gtt; scalar_t__ vram_addr; TYPE_1__* ops; } ;
struct drm_mode_fb_cmd2 {int width; int height; int* pitches; int pixel_format; } ;
struct drm_fb_helper_surface_size {int surface_width; int surface_height; int surface_bpp; int surface_depth; } ;
struct TYPE_10__ {int fb_base; } ;
struct drm_device {int dev; int pdev; TYPE_2__ mode_config; struct drm_psb_private* dev_private; } ;
struct TYPE_12__ {TYPE_3__* ranges; } ;
struct TYPE_11__ {scalar_t__ size; int base; } ;
struct TYPE_9__ {scalar_t__ accel_2d; } ;


 void* ALIGN (int,int) ;
 int ENOMEM ;
 int FBINFO_HWACCEL_YPAN ;
 scalar_t__ IS_ERR (struct fb_info*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct fb_info*) ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct fb_info* drm_fb_helper_alloc_fbi (TYPE_7__*) ;
 int drm_fb_helper_fill_info (struct fb_info*,TYPE_7__*,struct drm_fb_helper_surface_size*) ;
 int drm_mode_legacy_fb_format (int,int) ;
 int memset (scalar_t__,int ,int) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 int psb_framebuffer_init (struct drm_device*,struct psb_framebuffer*,struct drm_mode_fb_cmd2*,struct gtt_range*) ;
 int psb_gtt_free_range (struct drm_device*,struct gtt_range*) ;
 struct gtt_range* psbfb_alloc (struct drm_device*,int) ;
 int psbfb_ops ;
 int psbfb_roll_ops ;
 int psbfb_unaccel_ops ;

__attribute__((used)) static int psbfb_create(struct psb_fbdev *fbdev,
    struct drm_fb_helper_surface_size *sizes)
{
 struct drm_device *dev = fbdev->psb_fb_helper.dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct fb_info *info;
 struct drm_framebuffer *fb;
 struct psb_framebuffer *psbfb = &fbdev->pfb;
 struct drm_mode_fb_cmd2 mode_cmd;
 int size;
 int ret;
 struct gtt_range *backing;
 u32 bpp, depth;
 int gtt_roll = 0;
 int pitch_lines = 0;

 mode_cmd.width = sizes->surface_width;
 mode_cmd.height = sizes->surface_height;
 bpp = sizes->surface_bpp;
 depth = sizes->surface_depth;


 if (bpp == 24)
  bpp = 32;

 do {





         mode_cmd.pitches[0] = ALIGN(mode_cmd.width * ((bpp + 7) / 8), 4096 >> pitch_lines);

         size = mode_cmd.pitches[0] * mode_cmd.height;
         size = ALIGN(size, PAGE_SIZE);


  backing = psbfb_alloc(dev, size);

  if (pitch_lines)
   pitch_lines *= 2;
  else
   pitch_lines = 1;
  gtt_roll++;
 } while (backing == ((void*)0) && pitch_lines <= 16);


 pitch_lines /= 2;

 if (backing == ((void*)0)) {






  gtt_roll = 0;
  pitch_lines = 64;

  mode_cmd.pitches[0] = ALIGN(mode_cmd.width * ((bpp + 7) / 8), 64);

  size = mode_cmd.pitches[0] * mode_cmd.height;
  size = ALIGN(size, PAGE_SIZE);


  backing = psbfb_alloc(dev, size);
  if (backing == ((void*)0))
   return -ENOMEM;
 }

 memset(dev_priv->vram_addr + backing->offset, 0, size);

 info = drm_fb_helper_alloc_fbi(&fbdev->psb_fb_helper);
 if (IS_ERR(info)) {
  ret = PTR_ERR(info);
  goto out;
 }

 mode_cmd.pixel_format = drm_mode_legacy_fb_format(bpp, depth);

 ret = psb_framebuffer_init(dev, psbfb, &mode_cmd, backing);
 if (ret)
  goto out;

 fb = &psbfb->base;
 psbfb->fbdev = info;

 fbdev->psb_fb_helper.fb = fb;

 if (dev_priv->ops->accel_2d && pitch_lines > 8)
  info->fbops = &psbfb_ops;
 else if (gtt_roll) {
  info->fbops = &psbfb_roll_ops;
  info->flags |= FBINFO_HWACCEL_YPAN;
 } else
  info->fbops = &psbfb_unaccel_ops;

 info->fix.smem_start = dev->mode_config.fb_base;
 info->fix.smem_len = size;
 info->fix.ywrapstep = gtt_roll;
 info->fix.ypanstep = 0;


 info->screen_base = dev_priv->vram_addr + backing->offset;
 info->screen_size = size;

 if (dev_priv->gtt.stolen_size) {
  info->apertures->ranges[0].base = dev->mode_config.fb_base;
  info->apertures->ranges[0].size = dev_priv->gtt.stolen_size;
 }

 drm_fb_helper_fill_info(info, &fbdev->psb_fb_helper, sizes);

 info->fix.mmio_start = pci_resource_start(dev->pdev, 0);
 info->fix.mmio_len = pci_resource_len(dev->pdev, 0);



 dev_dbg(dev->dev, "allocated %dx%d fb\n",
     psbfb->base.width, psbfb->base.height);

 return 0;
out:
 psb_gtt_free_range(dev, backing);
 return ret;
}
