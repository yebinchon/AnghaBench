
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ram {int dummy; } ;
struct gt215_ram {int dummy; } ;


 int gt215_link_train_init (struct gt215_ram*) ;
 struct gt215_ram* gt215_ram (struct nvkm_ram*) ;

__attribute__((used)) static int
gt215_ram_init(struct nvkm_ram *base)
{
 struct gt215_ram *ram = gt215_ram(base);
 gt215_link_train_init(ram);
 return 0;
}
