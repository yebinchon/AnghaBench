
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct nvkm_i2c_bus {struct i2c_adapter i2c; } ;
struct nvkm_i2c_aux {struct i2c_adapter i2c; } ;
struct nvkm_i2c {int dummy; } ;
struct nouveau_encoder {struct nvkm_i2c_aux* aux; struct i2c_adapter* i2c; struct dcb_output* dcb; } ;
struct TYPE_2__ {int device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_encoder {scalar_t__ possible_clones; int possible_crtcs; } ;
struct drm_connector {int dev; } ;
struct dcb_output {int type; int hashm; int hasht; int heads; int extdev; } ;




 int DRM_MODE_ENCODER_TMDS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NVKM_I2C_AUX_EXT (int ) ;
 int NVKM_I2C_BUS_EXT (int ) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (int ,struct drm_encoder*,int *,int,char*,int ,int ) ;
 struct nouveau_encoder* kzalloc (int,int ) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int nv50_pior_func ;
 int nv50_pior_help ;
 struct nvkm_i2c_aux* nvkm_i2c_aux_find (struct nvkm_i2c*,int ) ;
 struct nvkm_i2c_bus* nvkm_i2c_bus_find (struct nvkm_i2c*,int ) ;
 struct nvkm_i2c* nvxx_i2c (int *) ;
 struct drm_encoder* to_drm_encoder (struct nouveau_encoder*) ;

__attribute__((used)) static int
nv50_pior_create(struct drm_connector *connector, struct dcb_output *dcbe)
{
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct nvkm_i2c *i2c = nvxx_i2c(&drm->client.device);
 struct nvkm_i2c_bus *bus = ((void*)0);
 struct nvkm_i2c_aux *aux = ((void*)0);
 struct i2c_adapter *ddc;
 struct nouveau_encoder *nv_encoder;
 struct drm_encoder *encoder;
 int type;

 switch (dcbe->type) {
 case 128:
  bus = nvkm_i2c_bus_find(i2c, NVKM_I2C_BUS_EXT(dcbe->extdev));
  ddc = bus ? &bus->i2c : ((void*)0);
  type = DRM_MODE_ENCODER_TMDS;
  break;
 case 129:
  aux = nvkm_i2c_aux_find(i2c, NVKM_I2C_AUX_EXT(dcbe->extdev));
  ddc = aux ? &aux->i2c : ((void*)0);
  type = DRM_MODE_ENCODER_TMDS;
  break;
 default:
  return -ENODEV;
 }

 nv_encoder = kzalloc(sizeof(*nv_encoder), GFP_KERNEL);
 if (!nv_encoder)
  return -ENOMEM;
 nv_encoder->dcb = dcbe;
 nv_encoder->i2c = ddc;
 nv_encoder->aux = aux;

 encoder = to_drm_encoder(nv_encoder);
 encoder->possible_crtcs = dcbe->heads;
 encoder->possible_clones = 0;
 drm_encoder_init(connector->dev, encoder, &nv50_pior_func, type,
    "pior-%04x-%04x", dcbe->hasht, dcbe->hashm);
 drm_encoder_helper_add(encoder, &nv50_pior_help);

 drm_connector_attach_encoder(connector, encoder);
 return 0;
}
