
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int possible_crtcs; } ;
struct nv50_msto {TYPE_1__ encoder; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_ENCODER_DPMST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_encoder_helper_add (TYPE_1__*,int *) ;
 int drm_encoder_init (struct drm_device*,TYPE_1__*,int *,int ,char*,char const*,int) ;
 int kfree (struct nv50_msto*) ;
 struct nv50_msto* kzalloc (int,int ) ;
 int nv50_msto ;
 int nv50_msto_help ;

__attribute__((used)) static int
nv50_msto_new(struct drm_device *dev, u32 heads, const char *name, int id,
       struct nv50_msto **pmsto)
{
 struct nv50_msto *msto;
 int ret;

 if (!(msto = *pmsto = kzalloc(sizeof(*msto), GFP_KERNEL)))
  return -ENOMEM;

 ret = drm_encoder_init(dev, &msto->encoder, &nv50_msto,
          DRM_MODE_ENCODER_DPMST, "%s-mst-%d", name, id);
 if (ret) {
  kfree(*pmsto);
  *pmsto = ((void*)0);
  return ret;
 }

 drm_encoder_helper_add(&msto->encoder, &nv50_msto_help);
 msto->encoder.possible_crtcs = heads;
 return 0;
}
