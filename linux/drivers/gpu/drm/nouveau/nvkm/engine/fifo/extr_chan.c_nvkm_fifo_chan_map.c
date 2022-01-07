
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int size; int addr; } ;
typedef enum nvkm_object_map { ____Placeholder_nvkm_object_map } nvkm_object_map ;


 int NVKM_OBJECT_MAP_IO ;
 struct nvkm_fifo_chan* nvkm_fifo_chan (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_fifo_chan_map(struct nvkm_object *object, void *argv, u32 argc,
     enum nvkm_object_map *type, u64 *addr, u64 *size)
{
 struct nvkm_fifo_chan *chan = nvkm_fifo_chan(object);
 *type = NVKM_OBJECT_MAP_IO;
 *addr = chan->addr;
 *size = chan->size;
 return 0;
}
