
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_i2c_pad {TYPE_2__* i2c; } ;
struct nvkm_i2c_aux_func {int dummy; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {int * algo; TYPE_3__ dev; int owner; int name; } ;
struct nvkm_i2c_aux {int id; TYPE_4__ i2c; int head; int mutex; struct nvkm_i2c_pad* pad; struct nvkm_i2c_aux_func const* func; } ;
struct nvkm_device {int dev; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {int aux; TYPE_1__ subdev; } ;


 int AUX_TRACE (struct nvkm_i2c_aux*,char*) ;
 int THIS_MODULE ;
 char* dev_name (int ) ;
 int i2c_add_adapter (TYPE_4__*) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int nvkm_i2c_aux_i2c_algo ;
 int snprintf (int ,int,char*,char*,int) ;

int
nvkm_i2c_aux_ctor(const struct nvkm_i2c_aux_func *func,
    struct nvkm_i2c_pad *pad, int id,
    struct nvkm_i2c_aux *aux)
{
 struct nvkm_device *device = pad->i2c->subdev.device;

 aux->func = func;
 aux->pad = pad;
 aux->id = id;
 mutex_init(&aux->mutex);
 list_add_tail(&aux->head, &pad->i2c->aux);
 AUX_TRACE(aux, "ctor");

 snprintf(aux->i2c.name, sizeof(aux->i2c.name), "nvkm-%s-aux-%04x",
   dev_name(device->dev), id);
 aux->i2c.owner = THIS_MODULE;
 aux->i2c.dev.parent = device->dev;
 aux->i2c.algo = &nvkm_i2c_aux_i2c_algo;
 return i2c_add_adapter(&aux->i2c);
}
