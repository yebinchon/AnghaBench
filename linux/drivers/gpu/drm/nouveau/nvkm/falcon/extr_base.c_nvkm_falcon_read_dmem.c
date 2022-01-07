
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_falcon {int dmem_mutex; TYPE_1__* func; } ;
struct TYPE_2__ {int (* read_dmem ) (struct nvkm_falcon*,int ,int ,int ,void*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct nvkm_falcon*,int ,int ,int ,void*) ;

void
nvkm_falcon_read_dmem(struct nvkm_falcon *falcon, u32 start, u32 size, u8 port,
        void *data)
{
 mutex_lock(&falcon->dmem_mutex);

 falcon->func->read_dmem(falcon, start, size, port, data);

 mutex_unlock(&falcon->dmem_mutex);
}
