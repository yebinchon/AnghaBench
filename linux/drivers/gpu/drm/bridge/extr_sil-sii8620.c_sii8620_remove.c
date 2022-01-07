
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {scalar_t__ cable_state; int bridge; int extcon_wq; int extcon_nb; scalar_t__ extcon; } ;
struct i2c_client {int dummy; } ;


 int EXTCON_DISP_MHL ;
 int drm_bridge_remove (int *) ;
 int extcon_unregister_notifier (scalar_t__,int ,int *) ;
 int flush_work (int *) ;
 struct sii8620* i2c_get_clientdata (struct i2c_client*) ;
 int sii8620_cable_out (struct sii8620*) ;

__attribute__((used)) static int sii8620_remove(struct i2c_client *client)
{
 struct sii8620 *ctx = i2c_get_clientdata(client);

 if (ctx->extcon) {
  extcon_unregister_notifier(ctx->extcon, EXTCON_DISP_MHL,
        &ctx->extcon_nb);
  flush_work(&ctx->extcon_wq);
  if (ctx->cable_state > 0)
   sii8620_cable_out(ctx);
 } else {
  sii8620_cable_out(ctx);
 }
 drm_bridge_remove(&ctx->bridge);

 return 0;
}
