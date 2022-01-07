
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_private {struct sti_compositor* compo; } ;
struct sti_compositor_subdev_descriptor {int type; scalar_t__ offset; int id; } ;
struct TYPE_2__ {unsigned int nb_subdev; struct sti_compositor_subdev_descriptor* subdev_desc; } ;
struct sti_compositor {int * mixer; scalar_t__ regs; int dev; int * vid; TYPE_1__ data; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int irq_enabled; struct sti_private* dev_private; } ;
struct device {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int DRM_ERROR (char*) ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;





 struct sti_compositor* dev_get_drvdata (struct device*) ;
 int drm_vblank_init (struct drm_device*,unsigned int) ;
 int sti_crtc_init (struct drm_device*,int ,struct drm_plane*,struct drm_plane*) ;
 struct drm_plane* sti_cursor_create (struct drm_device*,int ,int ,scalar_t__,int) ;
 struct drm_plane* sti_gdp_create (struct drm_device*,int ,int ,scalar_t__,int,int) ;
 int sti_mixer_create (int ,struct drm_device*,int ,scalar_t__) ;
 int sti_vid_create (int ,struct drm_device*,int ,scalar_t__) ;

__attribute__((used)) static int sti_compositor_bind(struct device *dev,
          struct device *master,
          void *data)
{
 struct sti_compositor *compo = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 unsigned int i, mixer_id = 0, vid_id = 0, crtc_id = 0;
 struct sti_private *dev_priv = drm_dev->dev_private;
 struct drm_plane *cursor = ((void*)0);
 struct drm_plane *primary = ((void*)0);
 struct sti_compositor_subdev_descriptor *desc = compo->data.subdev_desc;
 unsigned int array_size = compo->data.nb_subdev;

 dev_priv->compo = compo;


 for (i = 0; i < array_size; i++) {
  switch (desc[i].type) {
  case 128:
   compo->vid[vid_id++] =
       sti_vid_create(compo->dev, drm_dev, desc[i].id,
        compo->regs + desc[i].offset);
   break;
  case 129:
  case 130:
   compo->mixer[mixer_id++] =
       sti_mixer_create(compo->dev, drm_dev, desc[i].id,
          compo->regs + desc[i].offset);
   break;
  case 131:
  case 132:

   break;
  default:
   DRM_ERROR("Unknown subdev component type\n");
   return 1;
  }
 }


 for (i = 0; i < array_size; i++) {
  enum drm_plane_type plane_type = DRM_PLANE_TYPE_OVERLAY;

  if (crtc_id < mixer_id)
   plane_type = DRM_PLANE_TYPE_PRIMARY;

  switch (desc[i].type) {
  case 129:
  case 130:
  case 128:

   break;
  case 132:
   cursor = sti_cursor_create(drm_dev, compo->dev,
         desc[i].id,
         compo->regs + desc[i].offset,
         1);
   if (!cursor) {
    DRM_ERROR("Can't create CURSOR plane\n");
    break;
   }
   break;
  case 131:
   primary = sti_gdp_create(drm_dev, compo->dev,
       desc[i].id,
       compo->regs + desc[i].offset,
       (1 << mixer_id) - 1,
       plane_type);
   if (!primary) {
    DRM_ERROR("Can't create GDP plane\n");
    break;
   }
   break;
  default:
   DRM_ERROR("Unknown subdev component type\n");
   return 1;
  }


  if (crtc_id < mixer_id && primary) {
   sti_crtc_init(drm_dev, compo->mixer[crtc_id],
          primary, cursor);
   crtc_id++;
   cursor = ((void*)0);
   primary = ((void*)0);
  }
 }

 drm_vblank_init(drm_dev, crtc_id);

 drm_dev->irq_enabled = 1;

 return 0;
}
