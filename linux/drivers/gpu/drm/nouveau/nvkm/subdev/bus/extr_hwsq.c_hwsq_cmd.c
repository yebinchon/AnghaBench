
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {size_t size; int * data; } ;
struct nvkm_hwsq {TYPE_1__ c; } ;
typedef int data ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
hwsq_cmd(struct nvkm_hwsq *hwsq, int size, u8 data[])
{
 memcpy(&hwsq->c.data[hwsq->c.size], data, size * sizeof(data[0]));
 hwsq->c.size += size;
}
