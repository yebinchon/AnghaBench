
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_aux {int dummy; } ;
struct anx9805_pad {int addr; int base; } ;
struct anx9805_aux {int addr; struct nvkm_i2c_aux base; struct anx9805_pad* pad; } ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int anx9805_aux_func ;
 struct anx9805_pad* anx9805_pad (struct nvkm_i2c_pad*) ;
 struct anx9805_aux* kzalloc (int,int ) ;
 int nvkm_i2c_aux_ctor (int *,int *,int,struct nvkm_i2c_aux*) ;

__attribute__((used)) static int
anx9805_aux_new(struct nvkm_i2c_pad *base, int id, u8 drive,
  struct nvkm_i2c_aux **pbus)
{
 struct anx9805_pad *pad = anx9805_pad(base);
 struct anx9805_aux *aux;
 int ret;

 if (!(aux = kzalloc(sizeof(*aux), GFP_KERNEL)))
  return -ENOMEM;
 *pbus = &aux->base;
 aux->pad = pad;

 ret = nvkm_i2c_aux_ctor(&anx9805_aux_func, &pad->base, id, &aux->base);
 if (ret)
  return ret;

 switch (pad->addr) {
 case 0x39: aux->addr = 0x38; break;
 case 0x3b: aux->addr = 0x3c; break;
 default:
  return -ENOSYS;
 }

 return 0;
}
