
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_audio_infoframe {int dummy; } ;
union hdmi_infoframe {struct hdmi_audio_infoframe audio; } ;
struct tda998x_priv {int dummy; } ;


 int DIP_IF_FLAGS_IF4 ;
 int REG_IF4_HB0 ;
 int tda998x_write_if (struct tda998x_priv*,int ,int ,union hdmi_infoframe*) ;

__attribute__((used)) static void tda998x_write_aif(struct tda998x_priv *priv,
         const struct hdmi_audio_infoframe *cea)
{
 union hdmi_infoframe frame;

 frame.audio = *cea;

 tda998x_write_if(priv, DIP_IF_FLAGS_IF4, REG_IF4_HB0, &frame);
}
