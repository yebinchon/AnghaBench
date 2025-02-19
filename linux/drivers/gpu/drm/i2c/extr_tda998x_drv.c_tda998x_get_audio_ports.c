
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tda998x_priv {int* audio_port_enable; TYPE_1__* hdmi; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int dev; } ;




 int ARRAY_SIZE (int*) ;
 unsigned int AUDIO_ROUTE_I2S ;
 unsigned int AUDIO_ROUTE_SPDIF ;
 int EINVAL ;
 int be32_to_cpup (int const*) ;
 int dev_err (int *,char*,...) ;
 int* of_get_property (struct device_node*,char*,int*) ;

__attribute__((used)) static int tda998x_get_audio_ports(struct tda998x_priv *priv,
       struct device_node *np)
{
 const u32 *port_data;
 u32 size;
 int i;

 port_data = of_get_property(np, "audio-ports", &size);
 if (!port_data)
  return 0;

 size /= sizeof(u32);
 if (size > 2 * ARRAY_SIZE(priv->audio_port_enable) || size % 2 != 0) {
  dev_err(&priv->hdmi->dev,
   "Bad number of elements in audio-ports dt-property\n");
  return -EINVAL;
 }

 size /= 2;

 for (i = 0; i < size; i++) {
  unsigned int route;
  u8 afmt = be32_to_cpup(&port_data[2*i]);
  u8 ena_ap = be32_to_cpup(&port_data[2*i+1]);

  switch (afmt) {
  case 129:
   route = AUDIO_ROUTE_I2S;
   break;
  case 128:
   route = AUDIO_ROUTE_SPDIF;
   break;
  default:
   dev_err(&priv->hdmi->dev,
    "Bad audio format %u\n", afmt);
   return -EINVAL;
  }

  if (!ena_ap) {
   dev_err(&priv->hdmi->dev, "invalid zero port config\n");
   continue;
  }

  if (priv->audio_port_enable[route]) {
   dev_err(&priv->hdmi->dev,
    "%s format already configured\n",
    route == AUDIO_ROUTE_SPDIF ? "SPDIF" : "I2S");
   return -EINVAL;
  }

  priv->audio_port_enable[route] = ena_ap;
 }
 return 0;
}
