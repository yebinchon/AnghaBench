
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda998x_priv {scalar_t__* audio_port_enable; TYPE_1__* hdmi; } ;
struct tda998x_audio_settings {scalar_t__ ena_ap; int * route; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 int * tda998x_audio_route ;

__attribute__((used)) static int tda998x_derive_routing(struct tda998x_priv *priv,
      struct tda998x_audio_settings *s,
      unsigned int route)
{
 s->route = &tda998x_audio_route[route];
 s->ena_ap = priv->audio_port_enable[route];
 if (s->ena_ap == 0) {
  dev_err(&priv->hdmi->dev, "no audio configuration found\n");
  return -EINVAL;
 }

 return 0;
}
