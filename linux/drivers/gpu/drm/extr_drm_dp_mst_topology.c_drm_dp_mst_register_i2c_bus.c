
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; TYPE_3__* parent; } ;
struct TYPE_5__ {int retries; int name; TYPE_1__ dev; int owner; int class; struct drm_dp_aux* algo_data; int * algo; } ;
struct drm_dp_aux {TYPE_2__ ddc; TYPE_3__* dev; scalar_t__ name; } ;
struct TYPE_6__ {int of_node; } ;


 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 scalar_t__ dev_name (TYPE_3__*) ;
 int drm_dp_mst_i2c_algo ;
 int i2c_add_adapter (TYPE_2__*) ;
 int strlcpy (int ,scalar_t__,int) ;

__attribute__((used)) static int drm_dp_mst_register_i2c_bus(struct drm_dp_aux *aux)
{
 aux->ddc.algo = &drm_dp_mst_i2c_algo;
 aux->ddc.algo_data = aux;
 aux->ddc.retries = 3;

 aux->ddc.class = I2C_CLASS_DDC;
 aux->ddc.owner = THIS_MODULE;
 aux->ddc.dev.parent = aux->dev;
 aux->ddc.dev.of_node = aux->dev->of_node;

 strlcpy(aux->ddc.name, aux->name ? aux->name : dev_name(aux->dev),
  sizeof(aux->ddc.name));

 return i2c_add_adapter(&aux->ddc);
}
