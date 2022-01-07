; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_gmch_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_gmch_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32 }
%struct.i915_ggtt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*)* @gen6_gmch_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_gmch_remove(%struct.i915_address_space* %0) #0 {
  %2 = alloca %struct.i915_address_space*, align 8
  %3 = alloca %struct.i915_ggtt*, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %2, align 8
  %4 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %5 = call %struct.i915_ggtt* @i915_vm_to_ggtt(%struct.i915_address_space* %4)
  store %struct.i915_ggtt* %5, %struct.i915_ggtt** %3, align 8
  %6 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %7 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @iounmap(i32 %8)
  %10 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %11 = call i32 @cleanup_scratch_page(%struct.i915_address_space* %10)
  ret void
}

declare dso_local %struct.i915_ggtt* @i915_vm_to_ggtt(%struct.i915_address_space*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @cleanup_scratch_page(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
