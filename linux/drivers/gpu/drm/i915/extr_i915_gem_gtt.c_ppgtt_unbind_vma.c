
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; } ;
struct i915_vma {int size; TYPE_1__ node; TYPE_2__* vm; } ;
struct TYPE_4__ {int (* clear_range ) (TYPE_2__*,int ,int ) ;} ;


 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void ppgtt_unbind_vma(struct i915_vma *vma)
{
 vma->vm->clear_range(vma->vm, vma->node.start, vma->size);
}
