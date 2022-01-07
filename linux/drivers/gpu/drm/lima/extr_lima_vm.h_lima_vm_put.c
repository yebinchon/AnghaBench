
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_vm {int refcount; } ;


 int kref_put (int *,int ) ;
 int lima_vm_release ;

__attribute__((used)) static inline void lima_vm_put(struct lima_vm *vm)
{
 kref_put(&vm->refcount, lima_vm_release);
}
