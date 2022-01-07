
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memory; } ;
struct gt215_ram {TYPE_1__ ltrain; } ;


 int nvkm_memory_unref (int *) ;

__attribute__((used)) static void
gt215_link_train_fini(struct gt215_ram *ram)
{
 nvkm_memory_unref(&ram->ltrain.memory);
}
