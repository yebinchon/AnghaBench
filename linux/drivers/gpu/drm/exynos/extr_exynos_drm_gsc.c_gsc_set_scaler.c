
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_scaler {int main_vratio; int main_hratio; } ;
struct gsc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ,int ) ;
 int GSC_MAIN_H_RATIO ;
 int GSC_MAIN_H_RATIO_VALUE (int ) ;
 int GSC_MAIN_V_RATIO ;
 int GSC_MAIN_V_RATIO_VALUE (int ) ;
 int gsc_set_h_coef (struct gsc_context*,int ) ;
 int gsc_set_v_coef (struct gsc_context*,int ) ;
 int gsc_write (int ,int ) ;

__attribute__((used)) static void gsc_set_scaler(struct gsc_context *ctx, struct gsc_scaler *sc)
{
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "main_hratio[%ld]main_vratio[%ld]\n",
     sc->main_hratio, sc->main_vratio);

 gsc_set_h_coef(ctx, sc->main_hratio);
 cfg = GSC_MAIN_H_RATIO_VALUE(sc->main_hratio);
 gsc_write(cfg, GSC_MAIN_H_RATIO);

 gsc_set_v_coef(ctx, sc->main_vratio);
 cfg = GSC_MAIN_V_RATIO_VALUE(sc->main_vratio);
 gsc_write(cfg, GSC_MAIN_V_RATIO);
}
