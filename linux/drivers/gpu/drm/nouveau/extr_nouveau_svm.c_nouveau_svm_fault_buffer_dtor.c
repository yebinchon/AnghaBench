
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_svm_fault_buffer {int entries; int object; int notify; scalar_t__* fault; } ;
struct nouveau_svm {struct nouveau_svm_fault_buffer* buffer; } ;


 int kfree (scalar_t__) ;
 int kvfree (scalar_t__*) ;
 int nouveau_svm_fault_buffer_fini (struct nouveau_svm*,int) ;
 int nvif_notify_fini (int *) ;
 int nvif_object_fini (int *) ;

__attribute__((used)) static void
nouveau_svm_fault_buffer_dtor(struct nouveau_svm *svm, int id)
{
 struct nouveau_svm_fault_buffer *buffer = &svm->buffer[id];
 int i;

 if (buffer->fault) {
  for (i = 0; buffer->fault[i] && i < buffer->entries; i++)
   kfree(buffer->fault[i]);
  kvfree(buffer->fault);
 }

 nouveau_svm_fault_buffer_fini(svm, id);

 nvif_notify_fini(&buffer->notify);
 nvif_object_fini(&buffer->object);
}
