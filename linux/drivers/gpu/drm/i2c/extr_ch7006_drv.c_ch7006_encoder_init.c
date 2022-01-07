
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct drm_encoder_slave {int * slave_funcs; struct ch7006_priv* slave_priv; } ;
struct drm_device {int dummy; } ;
struct ch7006_priv {int norm; int scale; int contrast; int brightness; int flicker; int hmargin; int vmargin; int last_dpms; int chip_version; int subconnector; int select_subconnector; } ;


 int CH7006_VERSION_ID ;
 int DRM_MODE_SUBCONNECTOR_Automatic ;
 int DRM_MODE_SUBCONNECTOR_Unknown ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NUM_TV_NORMS ;
 int TV_NORM_PAL ;
 int ch7006_dbg (struct i2c_client*,char*) ;
 int ch7006_encoder_funcs ;
 int ch7006_err (struct i2c_client*,char*,int) ;
 int ch7006_read (struct i2c_client*,int ) ;
 int ch7006_scale ;
 int ch7006_tv_norm ;
 int * ch7006_tv_norm_names ;
 struct ch7006_priv* kzalloc (int,int ) ;
 int strcmp (int ,int) ;

__attribute__((used)) static int ch7006_encoder_init(struct i2c_client *client,
          struct drm_device *dev,
          struct drm_encoder_slave *encoder)
{
 struct ch7006_priv *priv;
 int i;

 ch7006_dbg(client, "\n");

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 encoder->slave_priv = priv;
 encoder->slave_funcs = &ch7006_encoder_funcs;

 priv->norm = TV_NORM_PAL;
 priv->select_subconnector = DRM_MODE_SUBCONNECTOR_Automatic;
 priv->subconnector = DRM_MODE_SUBCONNECTOR_Unknown;
 priv->scale = 1;
 priv->contrast = 50;
 priv->brightness = 50;
 priv->flicker = 50;
 priv->hmargin = 50;
 priv->vmargin = 50;
 priv->last_dpms = -1;
 priv->chip_version = ch7006_read(client, CH7006_VERSION_ID);

 if (ch7006_tv_norm) {
  for (i = 0; i < NUM_TV_NORMS; i++) {
   if (!strcmp(ch7006_tv_norm_names[i], ch7006_tv_norm)) {
    priv->norm = i;
    break;
   }
  }

  if (i == NUM_TV_NORMS)
   ch7006_err(client, "Invalid TV norm setting \"%s\".\n",
       ch7006_tv_norm);
 }

 if (ch7006_scale >= 0 && ch7006_scale <= 2)
  priv->scale = ch7006_scale;
 else
  ch7006_err(client, "Invalid scale setting \"%d\".\n",
      ch7006_scale);

 return 0;
}
