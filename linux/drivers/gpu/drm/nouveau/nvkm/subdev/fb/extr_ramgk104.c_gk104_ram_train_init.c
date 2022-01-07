
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_ram {int type; TYPE_1__* fb; } ;
struct gk104_ram_train {int dummy; } ;
struct TYPE_2__ {int subdev; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int gk104_ram_train_init_0 (struct nvkm_ram*,struct gk104_ram_train*) ;
 int gk104_ram_train_type (struct nvkm_ram*,int,int ,struct gk104_ram_train*) ;
 int kfree (struct gk104_ram_train*) ;
 struct gk104_ram_train* kzalloc (int,int ) ;
 int nvbios_ramcfg_index (int *) ;

__attribute__((used)) static int
gk104_ram_train_init(struct nvkm_ram *ram)
{
 u8 ramcfg = nvbios_ramcfg_index(&ram->fb->subdev);
 struct gk104_ram_train *train;
 int ret, i;

 if (!(train = kzalloc(sizeof(*train), GFP_KERNEL)))
  return -ENOMEM;

 for (i = 0; i < 0x100; i++) {
  ret = gk104_ram_train_type(ram, i, ramcfg, train);
  if (ret && ret != -ENOENT)
   break;
 }

 switch (ram->type) {
 case 128:
  ret = gk104_ram_train_init_0(ram, train);
  break;
 default:
  ret = 0;
  break;
 }

 kfree(train);
 return ret;
}
