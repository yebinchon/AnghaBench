
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_page_directory {int dummy; } ;
struct i915_address_space {int dummy; } ;


 int const GEN8_PTE_SHIFT ;
 struct i915_page_directory* gen8_pdp_for_page_index (struct i915_address_space* const,int const) ;

__attribute__((used)) static inline struct i915_page_directory *
gen8_pdp_for_page_address(struct i915_address_space * const vm, const u64 addr)
{
 return gen8_pdp_for_page_index(vm, addr >> GEN8_PTE_SHIFT);
}
