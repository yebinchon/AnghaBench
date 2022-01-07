
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int base; } ;
struct TYPE_5__ {void* brightness; void* colorkey; } ;
struct nouveau_plane {int colorkey; int brightness; TYPE_2__ base; TYPE_1__ props; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 int NV_ERROR (struct nouveau_drm*,char*) ;
 int drm_object_attach_property (int *,void*,int) ;
 int drm_plane_cleanup (TYPE_2__*) ;
 int drm_plane_force_disable (TYPE_2__*) ;
 int drm_plane_init (struct drm_device*,TYPE_2__*,int,int *,int ,int,int) ;
 void* drm_property_create_range (struct drm_device*,int ,char*,int ,int) ;
 int formats ;
 int kfree (struct nouveau_plane*) ;
 struct nouveau_plane* kzalloc (int,int ) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv04_plane_funcs ;

__attribute__((used)) static void
nv04_overlay_init(struct drm_device *device)
{
 struct nouveau_drm *drm = nouveau_drm(device);
 struct nouveau_plane *plane = kzalloc(sizeof(struct nouveau_plane), GFP_KERNEL);
 int ret;

 if (!plane)
  return;

 ret = drm_plane_init(device, &plane->base, 1 ,
        &nv04_plane_funcs,
        formats, 2, 0);
 if (ret)
  goto err;


 plane->props.colorkey = drm_property_create_range(
   device, 0, "colorkey", 0, 0x01ffffff);
 plane->props.brightness = drm_property_create_range(
   device, 0, "brightness", 0, 1024);
 if (!plane->props.colorkey ||
     !plane->props.brightness)
  goto cleanup;

 plane->colorkey = 0;
 drm_object_attach_property(&plane->base.base,
       plane->props.colorkey, plane->colorkey);

 plane->brightness = 512;
 drm_object_attach_property(&plane->base.base,
       plane->props.brightness, plane->brightness);

 drm_plane_force_disable(&plane->base);
 return;
cleanup:
 drm_plane_cleanup(&plane->base);
err:
 kfree(plane);
 NV_ERROR(drm, "Failed to create plane\n");
}
