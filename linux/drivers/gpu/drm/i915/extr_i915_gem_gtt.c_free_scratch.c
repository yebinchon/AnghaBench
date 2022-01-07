
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {int top; int * scratch; } ;


 int cleanup_page_dma (struct i915_address_space*,int ) ;
 int cleanup_scratch_page (struct i915_address_space*) ;
 int px_base (int *) ;
 int px_dma (int *) ;

__attribute__((used)) static void free_scratch(struct i915_address_space *vm)
{
 int i;

 if (!px_dma(&vm->scratch[0]))
  return;

 for (i = 1; i <= vm->top; i++) {
  if (!px_dma(&vm->scratch[i]))
   break;
  cleanup_page_dma(vm, px_base(&vm->scratch[i]));
 }

 cleanup_scratch_page(vm);
}
