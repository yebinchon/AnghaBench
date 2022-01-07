
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_i2c_bus {int i2c; } ;
struct nvkm_i2c {int dummy; } ;
struct nouveau_encoder {int * i2c; struct dcb_output* dcb; } ;
struct TYPE_2__ {int device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_encoder {scalar_t__ possible_clones; int possible_crtcs; } ;
struct drm_connector {int dev; } ;
struct dcb_output {int hashm; int hasht; int heads; int i2c_index; } ;


 int DRM_MODE_ENCODER_DAC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (int ,struct drm_encoder*,int *,int,char*,int ,int ) ;
 struct nouveau_encoder* kzalloc (int,int ) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int nv50_dac_func ;
 int nv50_dac_help ;
 struct nvkm_i2c_bus* nvkm_i2c_bus_find (struct nvkm_i2c*,int ) ;
 struct nvkm_i2c* nvxx_i2c (int *) ;
 struct drm_encoder* to_drm_encoder (struct nouveau_encoder*) ;

__attribute__((used)) static int
nv50_dac_create(struct drm_connector *connector, struct dcb_output *dcbe)
{
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct nvkm_i2c *i2c = nvxx_i2c(&drm->client.device);
 struct nvkm_i2c_bus *bus;
 struct nouveau_encoder *nv_encoder;
 struct drm_encoder *encoder;
 int type = DRM_MODE_ENCODER_DAC;

 nv_encoder = kzalloc(sizeof(*nv_encoder), GFP_KERNEL);
 if (!nv_encoder)
  return -ENOMEM;
 nv_encoder->dcb = dcbe;

 bus = nvkm_i2c_bus_find(i2c, dcbe->i2c_index);
 if (bus)
  nv_encoder->i2c = &bus->i2c;

 encoder = to_drm_encoder(nv_encoder);
 encoder->possible_crtcs = dcbe->heads;
 encoder->possible_clones = 0;
 drm_encoder_init(connector->dev, encoder, &nv50_dac_func, type,
    "dac-%04x-%04x", dcbe->hasht, dcbe->hashm);
 drm_encoder_helper_add(encoder, &nv50_dac_help);

 drm_connector_attach_encoder(connector, encoder);
 return 0;
}
