
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {int name; TYPE_1__ dev; int owner; int class; int algo; } ;
struct drm_dp_aux {TYPE_2__ ddc; int dev; scalar_t__ name; } ;


 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 scalar_t__ dev_name (int ) ;
 int drm_dp_aux_init (struct drm_dp_aux*) ;
 int drm_dp_aux_register_devnode (struct drm_dp_aux*) ;
 int drm_dp_aux_unregister_devnode (struct drm_dp_aux*) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int strlcpy (int ,scalar_t__,int) ;

int drm_dp_aux_register(struct drm_dp_aux *aux)
{
 int ret;

 if (!aux->ddc.algo)
  drm_dp_aux_init(aux);

 aux->ddc.class = I2C_CLASS_DDC;
 aux->ddc.owner = THIS_MODULE;
 aux->ddc.dev.parent = aux->dev;

 strlcpy(aux->ddc.name, aux->name ? aux->name : dev_name(aux->dev),
  sizeof(aux->ddc.name));

 ret = drm_dp_aux_register_devnode(aux);
 if (ret)
  return ret;

 ret = i2c_add_adapter(&aux->ddc);
 if (ret) {
  drm_dp_aux_unregister_devnode(aux);
  return ret;
 }

 return 0;
}
