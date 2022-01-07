; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___assign_ppgtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___assign_ppgtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { %struct.i915_address_space* }
%struct.i915_address_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gem_context*, %struct.i915_address_space*)* @__assign_ppgtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__assign_ppgtt(%struct.i915_gem_context* %0, %struct.i915_address_space* %1) #0 {
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.i915_address_space*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %3, align 8
  store %struct.i915_address_space* %1, %struct.i915_address_space** %4, align 8
  %5 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %6 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %7 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %6, i32 0, i32 0
  %8 = load %struct.i915_address_space*, %struct.i915_address_space** %7, align 8
  %9 = icmp eq %struct.i915_address_space* %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %13 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %14 = call %struct.i915_address_space* @__set_ppgtt(%struct.i915_gem_context* %12, %struct.i915_address_space* %13)
  store %struct.i915_address_space* %14, %struct.i915_address_space** %4, align 8
  %15 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %16 = icmp ne %struct.i915_address_space* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %19 = call i32 @i915_vm_put(%struct.i915_address_space* %18)
  br label %20

20:                                               ; preds = %10, %17, %11
  ret void
}

declare dso_local %struct.i915_address_space* @__set_ppgtt(%struct.i915_gem_context*, %struct.i915_address_space*) #1

declare dso_local i32 @i915_vm_put(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
