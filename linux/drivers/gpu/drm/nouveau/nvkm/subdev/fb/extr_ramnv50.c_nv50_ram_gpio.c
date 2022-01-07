
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_6__ {TYPE_2__* subdev; } ;
struct nv50_ramseq {TYPE_3__ base; } ;
struct dcb_gpio_func {int line; int* log; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct nvkm_gpio* gpio; } ;


 int DCB_GPIO_UNUSED ;
 int nvkm_gpio_find (struct nvkm_gpio*,int ,int ,int ,struct dcb_gpio_func*) ;
 size_t nvkm_gpio_get (struct nvkm_gpio*,int ,int ,int ) ;
 int ram_mask (struct nv50_ramseq*,struct nvkm_gpio,int,size_t) ;
 int ram_nsec (struct nv50_ramseq*,int) ;
 size_t ram_rd32 (struct nv50_ramseq*,struct nvkm_gpio) ;

__attribute__((used)) static void
nv50_ram_gpio(struct nv50_ramseq *hwsq, u8 tag, u32 val)
{
 struct nvkm_gpio *gpio = hwsq->base.subdev->device->gpio;
 struct dcb_gpio_func func;
 u32 reg, sh, gpio_val;
 int ret;

 if (nvkm_gpio_get(gpio, 0, tag, DCB_GPIO_UNUSED) != val) {
  ret = nvkm_gpio_find(gpio, 0, tag, DCB_GPIO_UNUSED, &func);
  if (ret)
   return;

  reg = func.line >> 3;
  sh = (func.line & 0x7) << 2;
  gpio_val = ram_rd32(hwsq, gpio[reg]);

  if (gpio_val & (8 << sh))
   val = !val;
  if (!(func.log[1] & 1))
   val = !val;

  ram_mask(hwsq, gpio[reg], (0x3 << sh), ((val | 0x2) << sh));
  ram_nsec(hwsq, 20000);
 }
}
