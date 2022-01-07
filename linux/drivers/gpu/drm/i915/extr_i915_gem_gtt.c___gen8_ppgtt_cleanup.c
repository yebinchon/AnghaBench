
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_directory {void** entry; } ;
struct i915_address_space {int dummy; } ;


 int GEN8_PDES ;
 int free_px (struct i915_address_space*,struct i915_page_directory*) ;

__attribute__((used)) static void __gen8_ppgtt_cleanup(struct i915_address_space *vm,
     struct i915_page_directory *pd,
     int count, int lvl)
{
 if (lvl) {
  void **pde = pd->entry;

  do {
   if (!*pde)
    continue;

   __gen8_ppgtt_cleanup(vm, *pde, GEN8_PDES, lvl - 1);
  } while (pde++, --count);
 }

 free_px(vm, pd);
}
