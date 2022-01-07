
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_falcon {int dmem_mutex; TYPE_1__* func; } ;
struct TYPE_2__ {int (* load_dmem ) (struct nvkm_falcon*,void*,int ,int ,int ) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct nvkm_falcon*,void*,int ,int ,int ) ;

void
nvkm_falcon_load_dmem(struct nvkm_falcon *falcon, void *data, u32 start,
        u32 size, u8 port)
{
 mutex_lock(&falcon->dmem_mutex);

 falcon->func->load_dmem(falcon, data, start, size, port);

 mutex_unlock(&falcon->dmem_mutex);
}
