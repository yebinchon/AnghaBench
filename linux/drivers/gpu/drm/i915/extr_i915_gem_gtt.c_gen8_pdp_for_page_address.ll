; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_pdp_for_page_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_pdp_for_page_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_page_directory = type { i32 }
%struct.i915_address_space = type { i32 }

@GEN8_PTE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_page_directory* (%struct.i915_address_space*, i32)* @gen8_pdp_for_page_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_page_directory* @gen8_pdp_for_page_address(%struct.i915_address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_address_space*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = call %struct.i915_page_directory* @gen8_pdp_for_page_index(%struct.i915_address_space* %5, i32 %8)
  ret %struct.i915_page_directory* %9
}

declare dso_local %struct.i915_page_directory* @gen8_pdp_for_page_index(%struct.i915_address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
