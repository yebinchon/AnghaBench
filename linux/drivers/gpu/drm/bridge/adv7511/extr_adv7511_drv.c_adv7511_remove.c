
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adv7511 {scalar_t__ type; int i2c_edid; int i2c_packet; int cec_adap; int bridge; scalar_t__ cec_clk; int i2c_cec; } ;


 scalar_t__ ADV7533 ;
 int adv7511_audio_exit (struct adv7511*) ;
 int adv7511_uninit_regulators (struct adv7511*) ;
 int adv7533_detach_dsi (struct adv7511*) ;
 int cec_unregister_adapter (int ) ;
 int clk_disable_unprepare (scalar_t__) ;
 int drm_bridge_remove (int *) ;
 struct adv7511* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;

__attribute__((used)) static int adv7511_remove(struct i2c_client *i2c)
{
 struct adv7511 *adv7511 = i2c_get_clientdata(i2c);

 if (adv7511->type == ADV7533)
  adv7533_detach_dsi(adv7511);
 i2c_unregister_device(adv7511->i2c_cec);
 if (adv7511->cec_clk)
  clk_disable_unprepare(adv7511->cec_clk);

 adv7511_uninit_regulators(adv7511);

 drm_bridge_remove(&adv7511->bridge);

 adv7511_audio_exit(adv7511);

 cec_unregister_adapter(adv7511->cec_adap);

 i2c_unregister_device(adv7511->i2c_packet);
 i2c_unregister_device(adv7511->i2c_edid);

 return 0;
}
