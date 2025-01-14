
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_fault_buffer {TYPE_3__* fault; } ;
struct TYPE_6__ {TYPE_2__* func; } ;
struct TYPE_4__ {int (* fini ) (struct nvkm_fault_buffer*) ;} ;
struct TYPE_5__ {TYPE_1__ buffer; } ;


 struct nvkm_fault_buffer* nvkm_fault_buffer (struct nvkm_object*) ;
 int stub1 (struct nvkm_fault_buffer*) ;

__attribute__((used)) static int
nvkm_ufault_fini(struct nvkm_object *object, bool suspend)
{
 struct nvkm_fault_buffer *buffer = nvkm_fault_buffer(object);
 buffer->fault->func->buffer.fini(buffer);
 return 0;
}
