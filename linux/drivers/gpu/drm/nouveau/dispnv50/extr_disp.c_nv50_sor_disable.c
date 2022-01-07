
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_i2c_aux {int dummy; } ;
struct TYPE_2__ {int base; } ;
struct nouveau_encoder {TYPE_1__ base; int (* update ) (struct nouveau_encoder*,int ,int *,int ,int ) ;struct nvkm_i2c_aux* aux; int * crtc; } ;
struct nouveau_crtc {int index; } ;
struct drm_encoder {int dummy; } ;


 int DP_SET_POWER ;
 int DP_SET_POWER_D3 ;
 int DP_SET_POWER_MASK ;
 struct nouveau_crtc* nouveau_crtc (int *) ;
 struct nouveau_encoder* nouveau_encoder (struct drm_encoder*) ;
 int nv50_audio_disable (struct drm_encoder*,struct nouveau_crtc*) ;
 int nv50_hdmi_disable (int *,struct nouveau_crtc*) ;
 int nv50_outp_release (struct nouveau_encoder*) ;
 int nvkm_rdaux (struct nvkm_i2c_aux*,int ,int *,int) ;
 int nvkm_wraux (struct nvkm_i2c_aux*,int ,int *,int) ;
 int stub1 (struct nouveau_encoder*,int ,int *,int ,int ) ;

__attribute__((used)) static void
nv50_sor_disable(struct drm_encoder *encoder)
{
 struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
 struct nouveau_crtc *nv_crtc = nouveau_crtc(nv_encoder->crtc);

 nv_encoder->crtc = ((void*)0);

 if (nv_crtc) {
  struct nvkm_i2c_aux *aux = nv_encoder->aux;
  u8 pwr;

  if (aux) {
   int ret = nvkm_rdaux(aux, DP_SET_POWER, &pwr, 1);
   if (ret == 0) {
    pwr &= ~DP_SET_POWER_MASK;
    pwr |= DP_SET_POWER_D3;
    nvkm_wraux(aux, DP_SET_POWER, &pwr, 1);
   }
  }

  nv_encoder->update(nv_encoder, nv_crtc->index, ((void*)0), 0, 0);
  nv50_audio_disable(encoder, nv_crtc);
  nv50_hdmi_disable(&nv_encoder->base.base, nv_crtc);
  nv50_outp_release(nv_encoder);
 }
}
