
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_vm {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct lima_vm *lima_vm_get(struct lima_vm *vm)
{
 kref_get(&vm->refcount);
 return vm;
}
