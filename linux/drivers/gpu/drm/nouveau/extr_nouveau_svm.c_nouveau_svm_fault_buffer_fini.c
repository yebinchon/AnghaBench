
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_svm_fault_buffer {int notify; } ;
struct nouveau_svm {struct nouveau_svm_fault_buffer* buffer; } ;


 int nvif_notify_put (int *) ;

__attribute__((used)) static void
nouveau_svm_fault_buffer_fini(struct nouveau_svm *svm, int id)
{
 struct nouveau_svm_fault_buffer *buffer = &svm->buffer[id];
 nvif_notify_put(&buffer->notify);
}
