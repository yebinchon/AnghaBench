
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct sun4i_layer {int plane; struct sun4i_backend* backend; } ;
struct sun4i_backend {int frontend; } ;
struct drm_device {int dev; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 unsigned int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 struct sun4i_layer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 scalar_t__ SUN4I_BACKEND_NUM_LAYERS ;
 int dev_err (int ,char*) ;
 struct sun4i_layer* devm_kzalloc (int ,int,int ) ;
 int drm_plane_create_alpha_property (int *) ;
 int drm_plane_create_zpos_property (int *,int ,int ,scalar_t__) ;
 int drm_plane_helper_add (int *,int *) ;
 int drm_universal_plane_init (struct drm_device*,int *,int ,int *,int const*,unsigned int,int const*,int,int *) ;
 int * sun4i_backend_layer_formats ;
 int sun4i_backend_layer_funcs ;
 int sun4i_backend_layer_helper_funcs ;
 int * sun4i_layer_formats ;
 int * sun4i_layer_modifiers ;

__attribute__((used)) static struct sun4i_layer *sun4i_layer_init_one(struct drm_device *drm,
      struct sun4i_backend *backend,
      enum drm_plane_type type)
{
 const uint64_t *modifiers = sun4i_layer_modifiers;
 const uint32_t *formats = sun4i_layer_formats;
 unsigned int formats_len = ARRAY_SIZE(sun4i_layer_formats);
 struct sun4i_layer *layer;
 int ret;

 layer = devm_kzalloc(drm->dev, sizeof(*layer), GFP_KERNEL);
 if (!layer)
  return ERR_PTR(-ENOMEM);

 layer->backend = backend;

 if (IS_ERR_OR_NULL(backend->frontend)) {
  formats = sun4i_backend_layer_formats;
  formats_len = ARRAY_SIZE(sun4i_backend_layer_formats);
  modifiers = ((void*)0);
 }


 ret = drm_universal_plane_init(drm, &layer->plane, 0,
           &sun4i_backend_layer_funcs,
           formats, formats_len,
           modifiers, type, ((void*)0));
 if (ret) {
  dev_err(drm->dev, "Couldn't initialize layer\n");
  return ERR_PTR(ret);
 }

 drm_plane_helper_add(&layer->plane,
        &sun4i_backend_layer_helper_funcs);

 drm_plane_create_alpha_property(&layer->plane);
 drm_plane_create_zpos_property(&layer->plane, 0, 0,
           SUN4I_BACKEND_NUM_LAYERS - 1);

 return layer;
}
