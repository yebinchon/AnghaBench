
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_device {TYPE_1__* func; } ;
struct io_mapping {int dummy; } ;
struct TYPE_2__ {int (* resource_size ) (struct nvkm_device*,int) ;int (* resource_addr ) (struct nvkm_device*,int) ;} ;


 struct io_mapping* io_mapping_create_wc (int ,int ) ;
 int stub1 (struct nvkm_device*,int) ;
 int stub2 (struct nvkm_device*,int) ;

__attribute__((used)) static inline struct io_mapping *
fbmem_init(struct nvkm_device *dev)
{
 return io_mapping_create_wc(dev->func->resource_addr(dev, 1),
        dev->func->resource_size(dev, 1));
}
