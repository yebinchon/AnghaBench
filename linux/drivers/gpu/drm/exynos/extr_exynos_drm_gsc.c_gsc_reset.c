
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_scaler {int range; } ;
struct gsc_context {struct gsc_scaler sc; int dev; } ;


 int dev_err (int ,char*) ;
 int gsc_sw_reset (struct gsc_context*) ;
 int memset (struct gsc_scaler*,int,int) ;

__attribute__((used)) static int gsc_reset(struct gsc_context *ctx)
{
 struct gsc_scaler *sc = &ctx->sc;
 int ret;


 ret = gsc_sw_reset(ctx);
 if (ret < 0) {
  dev_err(ctx->dev, "failed to reset hardware.\n");
  return ret;
 }


 memset(&ctx->sc, 0x0, sizeof(ctx->sc));
 sc->range = 1;

 return 0;
}
